import 'package:cleanarchappchima/data/helpers/constants.dart';
import 'package:cleanarchappchima/domain/models/profile.dart';
import 'package:cleanarchappchima/domain/repositories/profile_interface.dart';
import 'package:dio/dio.dart';

class ProfileRepository implements ProfileInterface {
  @override
  Future<Profile> create(String username) async {
    try {
      Dio dio = new Dio();
      Response response =
          await dio.post('$url/profile', data: {"username": username});
      return Profile.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<Profile>> index() async {
    try {
      Dio dio = new Dio();
      Response response = await dio.post('$url/profile');
      return response.data.map<Profile>((profile) => Profile.fromJson(profile)).toList();
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Profile> login(String username) async {
    try {
      Dio dio = new Dio();
      Response response = await dio
          .post('$url/profile/$username', data: {"username": username});
      return Profile.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}
