import 'package:cleanarchappchima/device/repositories/database.dart';
import 'package:cleanarchappchima/domain/models/profile.dart';

class ProfileLocalRepository {
  final DatabaseHandler database = new DatabaseHandler();

  Future<Profile> select() async {
    try {
      var db = await database.db;

      List<Map<String, dynamic>> list = await db.transaction((txn) async {
        return await txn.query("profile");
      });

      if (list.length > 0) {
        return Profile.fromJson(list[0]);
      }

      return null;
    } catch (e) {
      throw e;
    }
  }

  Future<bool> create(Profile profile) async {
    try {
      var db = await database.db;

      await db.transaction((txn) async {
        return await txn.insert("profile", profile.toJson());
      });

      return true;
    } catch (e) {
      throw e;
    }
  }

  Future<bool> delete() async {
    try {
      var db = await database.db;

      await db.transaction((txn) async {
        return await txn.delete("profile");
      });

      return true;
    } catch (e) {
      throw e;
    }
  }

}
