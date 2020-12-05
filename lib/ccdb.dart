import 'package:flutter/cupertino.dart';
import 'package:sembast/sembast.dart';

import 'cc_data.dart';

class CCDB {
  CCDB({
    @required this.database,
  });

  final Database database;

  final _store = stringMapStoreFactory.store('database');

  Future<List<CCData>> getAllData() async {
    final datas = await _store.find(database);
    final result = datas.map((data) => CCData.fromJson(data.value)).toList();
    return result;
  }

  Future<void> saveAllData(List<CCData> allData) async {
    await _store.delete(database);
    for (final data in allData) {
      await saveData(data);
    }
  }

  Future<void> saveData(CCData data) async {
    await _store.add(database, data.toJson());
  }
}
