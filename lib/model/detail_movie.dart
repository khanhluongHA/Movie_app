import 'package:json_annotation/json_annotation.dart';
part 'detail_movie.g.dart';

@JsonSerializable()
class DetailMovie {
  final String? name;
  final String? slug;
  @JsonKey(name: 'origin_name')
  final String? originName;
  final String? content;
  final String? type;
  final String? status;
  @JsonKey(name: 'poster_url')
  final String? posterUrl;
  @JsonKey(name: 'thumb_url')
  final String? thumbUrl;
  final bool? isCopyright;
  final bool? subDocquyen;
  final bool? chieurap;
  final String? trailerUrl;
  final String? time;
  final String? episodeCurrent;
  final String? episodeTotal;
  final String? quality;
  final String? lang;
  final String? notify;
  final String? showtimes;
  final int? year;
  final int? view;
  final List<String>? actor;

  DetailMovie({
    this.name,
    this.slug,
    this.originName,
    this.content,
    this.type,
    this.status,
    this.posterUrl,
    this.thumbUrl,
    this.isCopyright,
    this.subDocquyen,
    this.chieurap,
    this.trailerUrl,
    this.time,
    this.episodeCurrent,
    this.episodeTotal,
    this.quality,
    this.lang,
    this.notify,
    this.showtimes,
    this.year,
    this.view,
    this.actor,
  });

  factory DetailMovie.fromJson(Map<String, dynamic> json) =>
      _$DetailMovieFromJson(json);

  Map<String, dynamic> toJson() => _$DetailMovieToJson(this);

  static List<DetailMovie> convertToList(List<dynamic> json) {
    //json ở đây là data
    return json.map<DetailMovie>((item) => DetailMovie.fromJson(item)).toList();
    // post này là từng instance   ------------- post này là  để ấy vào trong fromjson trong factory rồi chuyển thành list
  }
}
