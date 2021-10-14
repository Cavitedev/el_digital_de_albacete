import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';

class YoutubeVideo implements NewsData {
  YoutubeVideo(String link) {
    int start = link.indexOf('embed/');
    start = start == -1 ? 0 : start + 6;
    int end = link.indexOf('?feature');
    end = end == -1 ? link.length : end;

    source = link.substring(start, end);
  }

  String? source;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is YoutubeVideo && runtimeType == other.runtimeType && source == other.source;

  @override
  int get hashCode => source.hashCode;

  @override
  String toString() {
    return 'Video{source: $source}';
  }
}
