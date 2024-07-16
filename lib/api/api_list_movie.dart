// ignore_for_file: empty_constructor_bodies
import 'dart:convert';
import 'package:project_watch_movie/constant.dart';
import 'package:http/http.dart' as http;

class ApiListMovie {
  static Future<Map<String, dynamic>> getMovies() async {
    var uri = Uri.https(
        Constants.baseUrl, '/danh-sach/phim-moi-cap-nhat', {'page': '1'});
    print(uri);
    Map<String, dynamic> result = {};
    try {
      final response = await http.get(uri);

      switch (response.statusCode) {
        case 200:
          var data = jsonDecode(response.body);
          result = data;
          break;
        case 400:
          var data = jsonDecode(response.body);
          result = data;
          break;
        case 401:
          var data = jsonDecode(response.body);
          result = data;
          break;
        case 404:
          var data = jsonDecode(response.body);
          result = data;
          break;
        default:
          var data = jsonDecode(response.body);
          result = data;
      }

      return result;
    } catch (e) {
      print(e);
    }
    return result;
  }
}