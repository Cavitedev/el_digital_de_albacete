import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter/cupertino.dart';

class ParagraphStyledData implements NewsData{
  List<StyledString> styledData;
  static const Map<String,TextStyle> attributesStyles = {
    'b' : TextStyle(fontWeight: FontWeight.bold),
    'u' : TextStyle(decoration: TextDecoration.underline),
    'strong' : TextStyle(fontWeight: FontWeight.bold),
    'i' : TextStyle(fontStyle: FontStyle.italic),
  };
  static const int _endSymbolSpacePlusNextStart = 2;
  static const int closeTagSymbolSpace = 1;
  ParagraphStyledData(String html){
    styledData = _checkTags(_tagAndText(text: html, tag: " "), null);
//    for(StyledString styledString in styledData){
//      print(styledString.extraStyle.);
//
//    }
  }

  List<StyledString> _checkTags(_tagAndText dataText, TextStyle styleBefore){
    List<StyledString> output = List<StyledString>();
    List<_tagAndText> recursiveTextsWithTags = _splitHtml(dataText.text);
    if(recursiveTextsWithTags.length == 0){
      output.add(StyledString(text: dataText.text,
          extraStyle:styleBefore== null ? attributesStyles[dataText.tag]:
          attributesStyles[dataText.tag]?.
          merge(styleBefore)
      ));
    }
//    else if(recursiveTextsWithTags.length == 1){
//      output.add(StyledString(text: recursiveTextsWithTags[0].text,
//          extraStyle:styleBefore== null ? _attributesStyles[recursiveTextsWithTags[0].tag]:
//          _attributesStyles[recursiveTextsWithTags[0].tag]?.
//          merge(styleBefore)
//      ));
//    }
    else{

    for(int i = 0; i<recursiveTextsWithTags.length; i++){
      output.addAll(_checkTags(recursiveTextsWithTags[i],
      styleBefore== null ?  attributesStyles[dataText.tag]:
      attributesStyles[dataText.tag]?.
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
    //print(indexOfTag);
    while(indexOfTag>=0){

      if(lastIndex <indexOfTag ){
        output.add(_tagAndText(tag: null,
            text: html.substring(lastIndex,indexOfTag)));
      }

      String tag = html.substring(indexOfTag+1,html.indexOf(">",indexOfTag+1));

      int startIndex = indexOfTag;
      i = indexOfTag+tag.length+ _endSymbolSpacePlusNextStart;
      indexOfTag = html.indexOf("<", i);
      while(indexOfTag>=0){
       // print(tag.length);
        String endTag = html.substring(indexOfTag,indexOfTag+tag.length+3);
        if(endTag == '</'+tag+'>'){
          output.add(_tagAndText(tag: tag,
              text: html.substring(startIndex+tag.length+_endSymbolSpacePlusNextStart,indexOfTag)));
//          print(html.substring(startIndex+tag.length+_endSymbolSpacePlusNextStart,indexOfTag));
          lastIndex= indexOfTag+tag.length+3;
          i = indexOfTag+ _endSymbolSpacePlusNextStart + closeTagSymbolSpace;
          indexOfTag = html.indexOf("<", i);
          break;
        }

        i = indexOfTag+ _endSymbolSpacePlusNextStart + closeTagSymbolSpace;
        indexOfTag = html.indexOf("<", i);
      }
    }
    if(lastIndex<html.length-1){
//      print(html.substring(lastIndex,html.length));
      output.add(_tagAndText(text: html.substring(lastIndex,html.length)));
    }
//    print(output.length> 0 ? output[0].tag: "");
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

