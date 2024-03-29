import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/news_cards.dart';
import 'package:el_digital_de_albacete/Spider/spider_news_list_specific_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({
    required this.onSearch,
    required this.onDetails,
    Key? key,
  }) : super(key: key);

  final Function onSearch;

  final Function(String) onDetails;

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList>
    with SingleTickerProviderStateMixin {
  _NewsListState();

  final Map<String, String> _tabs = {
    'Albacete':
        'https://www.eldigitaldealbacete.com/category/noticias-albacete/',
    'Castilla-La Mancha':
        'https://www.eldigitaldealbacete.com/category/castilla-la-mancha/',
    'Economía': 'https://www.eldigitaldealbacete.com/category/economia-2/',
    'Deportes':
        'https://www.eldigitaldealbacete.com/category/noticias-deporte-albacete/',
    'Sanded':
        'https://www.eldigitaldealbacete.com/category/noticias-sanidad-albacete/',
  };
  late Function onSearch;

  late Function(String) onDetails;

  TabController? _tabController;

  @override
  void initState() {
    onSearch = widget.onSearch;
    onDetails = widget.onDetails;
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            controller: _tabController,
            // testing
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            labelStyle: Theme.of(context)
                .textTheme
                .button!
                .merge(const TextStyle(fontWeight: FontWeight.bold)),
            unselectedLabelStyle: Theme.of(context).textTheme.button,
            tabs: _tabs.keys.map((key) {
              return Tab(
                text: key,
              );
            }).toList(),
          ),
          title: Text(
            'Digital de Albacete',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: Theme.of(context).textTheme.headline4!.fontSize! /
                    MediaQuery.of(context).textScaleFactor,),
          ),
          leading: Image.asset('assets/logo.png'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  onSearch();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SearchNews()));
                },
                icon: const Icon(
                  Icons.search,
                  size: 26,
                ),)
          ],
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: TabBarView(
          controller: _tabController,
          children: _tabs.values.map((String url) {
            return NewsCards(
              spiderPage: SpiderNewsListSpecificPage(url: url),
              onDetails: onDetails,
            );
          }).toList(),
        ),);
  }
}

Tab tabText(String text, BuildContext context) {
  return Tab(
    child: Text(text, style: Theme.of(context).textTheme.button),
  );
}
