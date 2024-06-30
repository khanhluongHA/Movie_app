import 'package:flutter/cupertino.dart';
import 'package:project_watch_movie/api/api.dart';
import 'package:project_watch_movie/model/movie_information.dart';

class MovieController extends ChangeNotifier {
  List<MovieInformation> movieInformation = [];

  Future<void> getDataMovieInformation() async {
    final response = await FetchApi.getMovies();
    movieInformation = MovieInformation.convertToList(response['items']);
    print(movieInformation.length);
    print('----------------------------');
    notifyListeners();
  }
}
