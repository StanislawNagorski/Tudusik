import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final _dbname = 'userTasks.db';
  static final _dbVersion = 1;
  static final _tableName = 'UserTasks';

  static final _columnTaskId = '_id';
  static final _columnTaskName = 'name';
  static final _columnTaskIsDone = 'isCheck';

  //Singleton
  DatabaseService._privateConstructor();

  static final DatabaseService instance = DatabaseService._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    _database ??= await _initiateDatabase();
    return _database;
  }

  Future<Database> _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbname);
    return await openDatabase(path, version: _dbVersion, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) {
    return db.execute('''
    CREATE TABLE $_tableName(
    $_columnTaskId INTEGER PRIMARY KEY,
    $_columnTaskName TEXT NOT NULL,
    $_columnTaskIsDone INTEGER DEFAULT 0
    );
    
    INSERT INTO $_tableName 
    ($_columnTaskName, $_columnTaskIsDone) 
    VALUES 
    ("Hello! Thx for using our App!", 0),
    ("Long press on task to remove it", 0);
    ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    Database db = await instance.database;
     var list = await db.query(_tableName);
     print(list);
     return list;
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[_columnTaskId];
    return await db
        .update(_tableName, row, where: '$_columnTaskId = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db
        .delete(_tableName, where: '$_columnTaskId = ?', whereArgs: [id]);
  }
}
