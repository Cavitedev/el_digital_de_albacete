import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';

class MeaningfulString implements NewsData{
  String string;
  TextTag textTag;
  MeaningfulString({this.string,this.textTag});


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MeaningfulString &&
              runtimeType == other.runtimeType &&
              string == other.string &&
              textTag == other.textTag;

  @override
  int get hashCode =>
      string.hashCode ^
      textTag.hashCode;


}

enum TextTag{img,h2}
