import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderNewsListSpecificPage.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart' as dartz;

main(){

  late List<SimpleNewsData> _news;
  SpiderNewsListSpecificPage spiderPage;


  test('Should return news on list page', () async{
    spiderPage = SpiderNewsListSpecificPage(url: "https://www.eldigitaldealbacete.com/category/noticias-albacete/");
    dartz.Either<Failure,
    List<SimpleNewsData>> _newsRetrieval = await spiderPage
        .scrapCurrentPage();

    _newsRetrieval.fold((failure){
      throw Exception("News could not load " + failure.message!);
    }, (news){
      _news = news;
    });
    expect(_news.length, 40);

  });

}

