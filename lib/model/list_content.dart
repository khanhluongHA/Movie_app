// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_watch_movie/commons/svg_images.dart';

class ListContent {
  final String? nameContent;
  final String? imageContent;

  ListContent({
    this.nameContent,
    this.imageContent,
  });
}

List<ListContent> rowContent = [
  ListContent(
    imageContent: SvgImages.svgGenres,
    nameContent: "Genres",
  ),
  ListContent(
    imageContent: SvgImages.svgTvSeries,
    nameContent: "TV series",
  ),
  ListContent(
    imageContent: SvgImages.svgMovies,
    nameContent: "Movies",
  ),
  ListContent(
    imageContent: SvgImages.svgTheatre,
    nameContent: "In Theatre",
  ),
];
