import 'package:path/path.dart';
import 'package:schooltaskdenfinal1/note_deneme/modelsnote/todo_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnect{
  Database? _database;

  Future<Database> get database async{
    final dbpath = await getDatabasesPath();

    const dbname = 'todo.db';

    final path = join(dbpath, dbname);

    _database = await openDatabase(path, version: 1, onCreate: _createDBS);
    return _database!;
  }

  Future<void> _createDBS(Database db, int version)async{
    await db.execute('''
    CREATE TABLE todo(
      ids INTEGER PRIMARY KEY AUTOINCREMENT,
      titles TEXT,
      creationDate TEXT,
      isChecked INTEGER
    )
''');
  }

  Future<void> insertTodo(Todo todo) async {
    final db = await database;

    await db.insert(
      'todo', 
      todo.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.replace
      );
  }

  Future<void> deleteTodo(Todo todo) async{
    final db = await database;

    await db.delete(
      'todo',
      where: 'ids == ?',
      whereArgs: [todo.ids],
    );
  }

  Future<List<Todo>> getTodo() async{
    final db = await database;

    List<Map<String, dynamic>> items = await db.query('todo', orderBy: 'ids DESC',
    
    );
    return List.generate(
      items.length, 
      (i) => Todo(
        ids: items[i]['ids'], 
        titles: items[i]['titles'],
        creationDate: DateTime.parse(items[i]['creationDate']),
        isChecked: items[i]['isChecked'] == 1 ? true : false,
        ),
      );
  }
}