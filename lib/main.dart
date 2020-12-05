import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/cc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'cc_list.dart';
import 'ccdb.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  await dir.create(recursive: true);
  final dbPath = join(dir.path, 'my_database.db');
  final db = await databaseFactoryIo.openDatabase(dbPath);
  final localData = CCDB(database: db);

  return runApp(
    MultiProvider(
      providers: [
        Provider<Directory>.value(value: dir),
        Provider<String>.value(value: dbPath),
        Provider<Database>.value(value: db),
        Provider<CCDB>.value(value: localData),
      ],
      child: CCTracker(),
    ),
  );
}

class CCTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CC Tracker',
      theme: ThemeData(primarySwatch: Colors.red),
      home: BlocProvider(
        create: (context) => CCBloc(
          dir: context.read<Directory>(),
          dbPath: context.read<String>(),
          db: context.read<Database>(),
          localData: context.read<CCDB>(),
        )..add(const LoadEvent()),
        child: CCList(),
      ),
    );
  }
}

// git add .
// git commit -m "bloc1"
// git commit --message "bloc1"
// git remote add origin https://github.com/tratesonof/CCryptoApp.git
// git push origin_2
// git push origin
// git checkout -b Bloc1
// git branch -d Bloc1 // удалить
// git push -f
// git branch --set-upstream-to=origin main
