import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/widgets/unorderdered_list.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Should render Column of the unordered list 1", (tester) async {
    UnorderedList listData = UnorderedList(elements: [
      ParagraphStyledData(
          "<strong>M</strong><strong>erced al apoyo económico de 50.000 € aportados por la institución provincial albacetense, la primera edición de esta novedosa iniciativa&nbsp;</strong><strong>habrá permitido, a su término, que 14 estudiantes de la Universidad de Castilla-La Mancha, procedentes de múltiples disciplinas, hayan realizado sus prácticas laborales en grandes empresas, PYMES, microempresas, empresas de la economía social, entidades del tercer sector y otras instituciones públicas y privadas de localidades de menos de 5.000 habitantes del territorio albacetense</strong>&nbsp;"),
      ParagraphStyledData(
          "“<strong>La juventud es vital: es el presente y el germen del futuro; y su implicación con este mundo&nbsp;</strong><strong>rural&nbsp;</strong><strong>(</strong><strong>que quizá no les es el más conocido pero&nbsp;</strong><strong>que&nbsp;</strong><strong>también es el suyo</strong><strong>),</strong><strong>&nbsp;es un valiosísimo instrumento para cambiar las cosas;&nbsp;</strong><strong>d</strong><strong>ecía Galeano (y&nbsp;</strong><strong>recordaba como nadie&nbsp;</strong><strong>el querido doctor Cepillo) que ‘mucha gente pequeña, en lugares pequeños, haciendo cosas pequeñas, puede cambiar el mundo’…&nbsp;</strong><strong>Un mensaje crucial que han encarnado t</strong><strong>odas y cada una de las personas implicadas en este programa&nbsp;</strong><strong>que, estoy convencido,&nbsp;</strong><strong>lo único que tiene por delante es un crecimiento sólido, esperanza y éxito&nbsp;</strong><strong>y con el que para la Diputación de Albacete es un enorme privilegio colaborar”, ha afirmado el presidente de la institución, Santi Cabañero</strong>"),
    ]);

    await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: UnorderedListWidget(
          unorderedList: listData,
        )));

    final li1Finder = find.byWidgetPredicate((widget) =>
        fromRichTextToPlainText(widget)?.endsWith(
          "Merced al apoyo económico de 50.000 € aportados por la institución provincial albacetense, la primera edición de esta novedosa iniciativa habrá permitido, a su término, que 14 estudiantes de la Universidad de Castilla-La Mancha, procedentes de múltiples disciplinas, hayan realizado sus prácticas laborales en grandes empresas, PYMES, microempresas, empresas de la economía social, entidades del tercer sector y otras instituciones públicas y privadas de localidades de menos de 5.000 habitantes del territorio albacetense",
        ) ??
        false);

        final li2Finder = find.byWidgetPredicate((widget) =>
        fromRichTextToPlainText(widget)?.endsWith(
          "“La juventud es vital: es el presente y el germen del futuro; y su implicación con este mundo rural (que quizá no les es el más conocido pero que también es el suyo), es un valiosísimo instrumento para cambiar las cosas; decía Galeano (y recordaba como nadie el querido doctor Cepillo) que ‘mucha gente pequeña, en lugares pequeños, haciendo cosas pequeñas, puede cambiar el mundo’… Un mensaje crucial que han encarnado todas y cada una de las personas implicadas en este programa que, estoy convencido, lo único que tiene por delante es un crecimiento sólido, esperanza y éxito y con el que para la Diputación de Albacete es un enorme privilegio colaborar”, ha afirmado el presidente de la institución, Santi Cabañero",
        ) ??
        false);

    expect(li1Finder, findsOneWidget);
    expect(li2Finder, findsOneWidget);
  });
}

String? fromRichTextToPlainText(final Widget widget) {
  if (widget is RichText) {
    if (widget.text is TextSpan) {
      final buffer = StringBuffer();
      (widget.text as TextSpan).computeToPlainText(buffer);
      return buffer.toString();
    }
  }
  return null;
}
