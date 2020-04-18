import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';

class Video implements NewsData{
  String source;

  Video(String link)
  {
      int start = link.indexOf("embed/");
      start = start==-1? 0:start + 6;
      int end = link.indexOf("?feature");
      end = end==-1? link.length: end;
      print(start);

    source = link.substring(start,end);
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Video &&
              runtimeType == other.runtimeType &&
              source == other.source;

  @override
  int get hashCode => source.hashCode;

  @override
  String toString() {
    return 'Video{source: $source}';
  }


}