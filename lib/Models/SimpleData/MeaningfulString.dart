import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';

class MeaningfulString implements NewsData{
  String string;
  TextTag textTag;

  MeaningfulString({this.string,this.textTag});
}

enum TextTag{img,h2}
