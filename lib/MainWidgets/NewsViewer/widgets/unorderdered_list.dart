import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:flutter/material.dart';

import '../SingleNewsViewer.dart';

class UnorderedListWidget extends StatelessWidget {
  final UnorderedList unorderedList;

  const UnorderedListWidget({Key? key, required this.unorderedList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<NewsData> elements = unorderedList.elements;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: elements.map((listItem) {
          if (listItem is MeaningfulString) {
            MeaningfulString showString = MeaningfulString(
                string: "•   " + listItem.string!, textTag: listItem.textTag);
            return SingleNewsDataBodyWidget.meaningulStringUI(
                showString, context)!;
          } else if (listItem is ParagraphStyledData) {
            List<TextSpan> itemText = [TextSpan(text: "•   ")];
            itemText.addAll(listItem.styledData.map((textStyled) {
              return TextSpan(
                  text: textStyled.text, style: textStyled.extraStyle);
            }).toList());

            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
              child: RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: itemText),
              ),
            );
          } else {
            return Padding(padding: EdgeInsets.zero,);
          }
        }).toList());
  }
}
