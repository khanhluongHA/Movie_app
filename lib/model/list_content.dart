// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    imageContent: "assets/images/content1.svg",
    nameContent: "Genres",
  ),
  ListContent(
    imageContent: "assets/images/content2.svg",
    nameContent: "TV series",
  ),
  ListContent(
    imageContent: "assets/images/content3.svg",
    nameContent: "Movies",
  ),
  ListContent(
    imageContent: "assets/images/content4.svg",
    nameContent: "In Theatre",
  ),
];
