import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/state_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sembast/sembast.dart';

import 'cc_data.dart';
import 'ccdb.dart';

abstract class Event {
  const Event();
}

class LoadEvent extends Event {
  const LoadEvent();
}

class CCBloc extends Bloc<Event, ViewState> {
  CCBloc({
    @required this.dir,
    @required this.dbPath,
    @required this.db,
    @required this.localData,
  }) : super(const ViewState.loading());

  final Directory dir;
  final String dbPath;
  final Database db;
  final CCDB localData;

  @override
  Stream<ViewState> mapEventToState(Event event) async* {
    if (event is LoadEvent) {
      yield ViewState.content(ccData: await fetchCCData(http.Client()));
    }
  }

  List<CCData> _parseCCData(String data) {
    final parsed = jsonDecode(data);

    return parsed['data'].map<CCData>((json) => CCData.fromJson(json)).toList();
  }

  Future<List<CCData>> fetchCCData(http.Client client) async {
    try {
      final response =
          await client.get('https://api.coincap.io/v2/assets?limit=100');

      final parsedData = await compute<String, List<CCData>>(
        _parseCCData,
        response.body,
      );
      await localData.saveAllData(parsedData);
      return parsedData;
    } on Error catch (_) {
      return await localData.getAllData();
    }
  }
}
