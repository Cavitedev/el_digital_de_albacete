import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';

class MP4Video implements NewsData{
  String link;

  MP4Video({this.link});

  @override
  String toString() {
    return 'MP4Video{link: $link}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MP4Video &&
              runtimeType == other.runtimeType &&
              link == other.link;

  @override
  int get hashCode => link.hashCode;




}