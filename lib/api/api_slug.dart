import 'dart:convert';
import 'package:project_watch_movie/constant.dart';
import 'package:http/http.dart' as http;

class ApiSlug {
  static Future<Map<String, dynamic>> getDetailMovie(String slug) async {
    var uri = Uri.https(
        Constants.baseUrl, '/phim/$slug',);
        
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

  ///api tail
}