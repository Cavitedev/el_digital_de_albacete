import 'package:el_digital_de_albacete/Models/SimpleData/meaningful_string.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/unordered_list.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:flutter/material.dart';

import '../single_news_viewer.dart';

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
            List<TextSpan> itemText = [const TextSpan(text: "•   ")];
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
            return const Padding(padding: EdgeInsets.zero,);
          }
        }).toList());
  }
}
