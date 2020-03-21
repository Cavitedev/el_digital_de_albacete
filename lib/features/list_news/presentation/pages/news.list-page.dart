import 'package:el_digital_de_albacete/features/list_news/presentation/widgets/NewsCards.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewsListPage extends StatefulWidget {

  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage>
    with SingleTickerProviderStateMixin {


  final Map<String, String> _tabs = {
    "Albacete": "https://www.eldigitaldealbacete.com/noticias-albacete/",
    "Castilla-La Mancha":
    "https://www.eldigitaldealbacete.com/castilla-la-mancha/",
    "Economía": "https://www.eldigitaldealbacete.com/economia-2/",
    "Deportes": "https://www.eldigitaldealbacete.com/noticias-deporte-albacete/",
    "Sanidad": "https://www.eldigitaldealbacete.com/noticias-sanidad-albacete/",
  };
  TabController _tabController;



  @override
  void initState() {
    _tabController = new TabController(length: _tabs.length, vsync: this);
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
              labelStyle: Theme
                  .of(context)
                  .textTheme
                  .button
                  .merge(TextStyle(fontWeight: FontWeight.bold)),
              unselectedLabelStyle: Theme
                  .of(context)
                  .textTheme
                  .button,
              tabs: _tabs.keys.map((key) {
                return Tab(
                  text: key,
                );
              }).toList()),
          title: Text(
            'Digital de Albacete',
            style: Theme
                .of(context)
                .textTheme
                .display1,
          ),
          leading: Image.asset('assets/logo.png'),
          backgroundColor: Theme
              .of(context)
              .accentColor,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        body:
           TabBarView(
            controller: _tabController,
            children: _tabs.values.map((String url) {
              return NewsCards(url: url,);
            }).toList(),
          ),


    );
  }
}

Tab tabText(String text, BuildContext context) {
  return Tab(
    child: Text(text, style: Theme
        .of(context)
        .textTheme
        .button),
  );
}


