import 'package:flutter/material.dart';
import 'package:project_watch_movie/api/api_list_movie.dart';
import 'package:project_watch_movie/model/movie_information.dart';

class HomeController extends ChangeNotifier {
  List<MovieInformation> movieInformation = [];

  Future<void> getDataMovieInformation() async {
    final response = await ApiListMovie.getMovies();
    movieInformation = MovieInformation.convertToList(
      response['items'],
    );
    notifyListeners();
  }

  int currentIndex = 0;
  void setStateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
