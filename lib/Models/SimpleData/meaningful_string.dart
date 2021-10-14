import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';

class MeaningfulString implements NewsData {
  String? string;
  TextTag? textTag;
  MeaningfulString({this.string, this.textTag});

  @override
  String toString() {
    return 'MeaningfulString{string: $string, textTag: $textTag}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeaningfulString &&
          runtimeType == other.runtimeType &&
          string == other.string &&
          textTag == other.textTag;

  @override
  int get hashCode => string.hashCode ^ textTag.hashCode;

  static TextTag? textTagFromString(String? string) {
    switch (string) {
      case 'img':
        return TextTag.img;
      case 'h2':
        return TextTag.h2;
      case 'h3':
        return TextTag.h3;
      case 'h4':
        return TextTag.h4;
    }
    return null;
  }
}

enum TextTag { img, h2, h3, h4 }
