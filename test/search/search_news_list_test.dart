import 'package:dartz/dartz.dart' as dartz;
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_news_list_specific_page.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  late List<SimpleNewsData> _news;
  SpiderNewsListSpecificPage spiderPage;


  test('Should return news on search page', () async{
    spiderPage = SpiderNewsListSpecificPage(url: 'https://www.eldigitaldealbacete.com/?s=coronavirus');
    final dartz.Either<Failure,
    List<SimpleNewsData>> _newsRetrieval = await spiderPage
        .scrapCurrentPage();

    _newsRetrieval.fold((failure){
      throw Exception('News could not load ${failure.message!}');
    }, (news){
      _news = news;
    });
    expect(_news.length, 40);

  });

}

