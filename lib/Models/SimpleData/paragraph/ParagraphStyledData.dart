import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter/cupertino.dart';

class ParagraphStyledData implements NewsData{
  List<StyledString> styledData;
  static const Map<String,TextStyle> _attributesStyles = {
    'b' : TextStyle(fontWeight: FontWeight.bold),
    'u' : TextStyle(decoration: TextDecoration.underline),
    'strong' : TextStyle(decoration: TextDecoration.underline),
    'i' : TextStyle(fontWeight: FontWeight.bold),
  };
  static const int _endSymbolSpacePlusNextStart = 2;
  static const int closeTagSymbolSpace = 1;
  ParagraphStyledData(String html){
    styledData = _checkTags(_tagAndText(text: html, tag: " "), null);
    for(StyledString styledString in styledData){
//      print(styledString.text);

    }
  }

  List<StyledString> _checkTags(_tagAndText dataText, TextStyle styleBefore){
    List<StyledString> output = List<StyledString>();
    List<_tagAndText> recursiveTextsWithTags = _splitHtml(dataText.text);
    if(recursiveTextsWithTags.length <= 1){
      output.add(StyledString(text: dataText.text,
          extraStyle:styleBefore== null ? _attributesStyles[dataText.tag]:
          _attributesStyles[dataText.tag]?.
          merge(styleBefore)
      ));
    }
    else{

    for(int i = 0; i<recursiveTextsWithTags.length; i++){
      output.addAll(_checkTags(recursiveTextsWithTags[i],
      styleBefore== null ?  _attributesStyles[dataText.tag]:
      _attributesStyles[dataText.tag]?.
      merge(styleBefore)));
    }
    }

    return output;
  }


  List<_tagAndText> _splitHtml(String html){

    List<_tagAndText> output = List<_tagAndText>();
    int i = 0;
    int indexOfTag = html.indexOf("<", i);
    int lastIndex = html.length-1;
    if(indexOfTag>0) {
      output.add(_tagAndText(
          text: html.substring(0,indexOfTag)));
    }
    print(indexOfTag);
    while(indexOfTag>=0){
      String tag = html.substring(indexOfTag,html.indexOf(">",indexOfTag+1));

      int startIndex = indexOfTag;
      i = indexOfTag+tag.length+ _endSymbolSpacePlusNextStart;
      indexOfTag = html.indexOf("<", i);
      while(indexOfTag>=0){
        print(tag.length);
        //TODO debug this place
        if(html.substring(indexOfTag,indexOfTag+tag.length+3) == '</'+tag+'>'){
          output.add(_tagAndText(tag: tag,
              text: html.substring(startIndex+tag.length+_endSymbolSpacePlusNextStart,indexOfTag)));
          lastIndex= i;
        }

        i = indexOfTag+tag.length+ _endSymbolSpacePlusNextStart + closeTagSymbolSpace;
        indexOfTag = html.indexOf("<", i);
      }
    }
    if(lastIndex<html.length-1){
      output.add(_tagAndText(text: html.substring(lastIndex,html.length)));
    }
    return output;

//    for(int i = 0; i<html.length; i++){
//      if(html[i] == '<'){
//
//
//
//        int startIndex = i;
//        int lastIndex;
//        while(i<html.length && html[i++] != '>'){}
//        String tag = html.substring(startIndex,i);
//        for(;i<html.length; i++){
//          if(html[i] == '<'){
//            if(html.substring(i,i+tag.length+3) == '</'+tag+'>'){
//              i += tag.length+3;
//              output.add(_tagAndText(tag: tag,
//                  text: html.substring(startIndex+tag.length+2,i)));
//              lastIndex= i;
//            }
//          }
//        }
//
//        if(lastIndex<html.length-1){
//          output.add(_tagAndText(text: html.substring(lastIndex,html.length)));
//        }
//
//      }
//
//    }
  }

}

class _tagAndText{
  String tag;
  String text;

  _tagAndText({this.tag, this.text});

}

