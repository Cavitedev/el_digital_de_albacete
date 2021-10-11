import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter/cupertino.dart';

class ParagraphStyledData implements NewsData {
  late List<StyledString> styledData;
  static const Map<String, TextStyle> attributesStyles = {
    'b': TextStyle(fontWeight: FontWeight.bold),
    'u': TextStyle(decoration: TextDecoration.underline),
    'strong': TextStyle(fontWeight: FontWeight.bold),
    'i': TextStyle(fontStyle: FontStyle.italic),
  };
  static const List<String> _htmlEntities = <String>['&nbsp;', '<br>'];
  static const List<String> _htmlTagsToRemove = <String>['span'];
  static const int _endSymbolSpacePlusNextStart = 2;
  static const int closeTagSymbolSpace = 1;
  ParagraphStyledData(String html) {
    html = _removeHTMLTags(html);
    html = _removeEntitiesTags(html);
    styledData = _checkTags(TagAndText(text: html, tag: ""), null);
  }

  List<StyledString> _checkTags(TagAndText dataText, TextStyle? styleBefore) {
    List<StyledString> output = <StyledString>[];
    List<TagAndText> recursiveTextsWithTags = _splitHtml(dataText.text!);
    if (recursiveTextsWithTags.length == 0) {
      output.add(StyledString(
          text: dataText.text,
          extraStyle: styleBefore == null
              ? attributesStyles[dataText.tag!]
              : attributesStyles[dataText.tag!]?.merge(styleBefore)));
    } else {
      for (int i = 0; i < recursiveTextsWithTags.length; i++) {
        output.addAll(_checkTags(
            recursiveTextsWithTags[i],
            styleBefore == null
                ? attributesStyles[dataText.tag!]
                : attributesStyles[dataText.tag!]?.merge(styleBefore)));
      }
    }

    return output;
  }

  List<TagAndText> _splitHtml(String html) {
    List<TagAndText> output = <TagAndText>[];
    int i = 0;
    int indexOfTag = html.indexOf("<", i);
    int lastIndex = html.length - 1;
    if (indexOfTag > 0) {
      output.add(TagAndText(text: html.substring(0, indexOfTag)));
    }
    while (indexOfTag >= 0) {
      if (lastIndex < indexOfTag) {
        output.add(
            TagAndText(tag: null, text: html.substring(lastIndex, indexOfTag)));
      }

      String tag =
          html.substring(indexOfTag + 1, html.indexOf(">", indexOfTag + 1));

      int startIndex = indexOfTag;
      i = indexOfTag + tag.length + _endSymbolSpacePlusNextStart;
      indexOfTag = html.indexOf("<", i);
      while (indexOfTag >= 0) {
        if (indexOfTag + tag.length + 3 > html.length) break;
        String endTag = html.substring(indexOfTag, indexOfTag + tag.length + 3);
        if (endTag == '</' + tag + '>') {
          output.add(TagAndText(
              tag: tag,
              text: html.substring(
                  startIndex + tag.length + _endSymbolSpacePlusNextStart,
                  indexOfTag)));
          lastIndex = indexOfTag + tag.length + 3;
          i = indexOfTag + _endSymbolSpacePlusNextStart + closeTagSymbolSpace;
          indexOfTag = html.indexOf("<", i);
          break;
        }

        i = indexOfTag + _endSymbolSpacePlusNextStart + closeTagSymbolSpace;
        indexOfTag = html.indexOf("<", i);
      }
    }
    if (lastIndex < html.length - 1) {
      output.add(TagAndText(text: html.substring(lastIndex, html.length)));
    }
    return output;
  }

  String _removeEntitiesTags(String html) {
    for (String htmlTag in _htmlEntities) {
      html = html.replaceAll(htmlTag, " ");
    }

    return html;
  }

  static String _removeHTMLTags(String html) {
    for (String htmlTag in _htmlTagsToRemove) {
      String regExp = "<$htmlTag[^>]*>";
      html = html.replaceAll(RegExp(regExp), '');
      regExp = "</$htmlTag>";
      html = html.replaceAll(RegExp(regExp), '');
    }

    return html;
  }
}

class TagAndText {
  String? tag;
  String? text;

  TagAndText({this.tag, this.text});
}
