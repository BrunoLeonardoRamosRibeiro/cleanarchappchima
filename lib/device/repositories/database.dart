import 'package:cleanarchappchima/device/helpers/constants.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandler {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;

    _db = await initDb();

    return _db;
  }

  initDb() async {
    String documentsDirectory = await getDatabasesPath();
    String path = join(documentsDirectory, "instagram_db");

    var theDb = await openDatabase(path,
        version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade);

    return theDb;
  }

  void _onUpgrade(Database db, int a, int version) async {}

  void _onCreate(Database db, int version) async {
    await db.execute(profileTable);
  }
}
