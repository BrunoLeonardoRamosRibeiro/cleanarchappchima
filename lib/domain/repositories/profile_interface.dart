import 'package:cleanarchappchima/domain/models/profile.dart';

abstract class ProfileInterface {
  Future<Profile> create(String username);

  Future<Profile> login(String username);

  Future<List<Profile>> index();
}
