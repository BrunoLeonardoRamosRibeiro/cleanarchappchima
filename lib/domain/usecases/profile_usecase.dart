import 'package:cleanarchappchima/data/repositories/profile_repository.dart';
import 'package:cleanarchappchima/device/repositories/profile_local_repository.dart';
import 'package:cleanarchappchima/domain/models/profile.dart';
import 'package:cleanarchappchima/domain/repositories/profile_interface.dart';

class ProfileUsecase implements ProfileInterface {
  @override
  Future<Profile> create(String username) async {
    try {
      final api = ProfileRepository();
      final local = ProfileLocalRepository();

      Profile profile = await api.create(username);

      await local.delete();
      await local.create(profile);

      return profile;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<Profile>> index() async {
    try {
      final api = ProfileRepository();
      List<Profile> profiles = await api.index();
      return profiles;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Profile> login(String username) async {
    try {
      final api = ProfileRepository();
      final local = ProfileLocalRepository();

      Profile profile = await api.login(username);

      await local.delete();
      await local.create(profile);

      return profile;
    } catch (e) {
      throw e;
    }
  }
}
