import 'package:flutter/material.dart';
import 'package:project_watch_movie/api/api_slug.dart';
import 'package:project_watch_movie/model/detail_movie.dart';

class DetailHomeController extends ChangeNotifier {
  DetailMovie detailMovie = DetailMovie();

  Future<void> getDetailMovie(String slug) async {
    final response = await ApiSlug.getDetailMovie(slug);
    detailMovie = DetailMovie.fromJson(
      response['movie'],
    );
    notifyListeners();
  }

  bool isFavorite = false;
  void stateFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  bool isExpanded = false;
  void stateExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
