import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:meta/meta.dart';
class Video implements NewsData{
  String link;

  Video({@required this.link});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Video &&
              runtimeType == other.runtimeType &&
              link == other.link;

  @override
  int get hashCode => link.hashCode;

  @override
  String toString() {
    return 'Video{link: $link}';
  }


}