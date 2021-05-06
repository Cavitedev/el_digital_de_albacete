import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsCards.dart';
import 'package:flutter/material.dart';

import '../../Spider/SpiderNewsListSpecificPage.dart';

class SearchNews extends StatefulWidget {
  @override
  _SearchNewsState createState() => _SearchNewsState();
}

class _SearchNewsState extends State<SearchNews>
    with SingleTickerProviderStateMixin {
  bool searching = true;

  TextEditingController _searchQueryController = TextEditingController();
  String searchQuery = "";

//  NewsCards newsCards;
  final GlobalKey<NewsCardsState> _cardsState = GlobalKey<NewsCardsState>();
  FocusNode searchFocus;

  void initState() {
    super.initState();

    searchFocus = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    searchFocus.dispose();

    super.dispose();
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      focusNode: searchFocus,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Buscar noticias",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white70),
      ),
      style: Theme.of(context).textTheme.display1.copyWith(
          fontSize: Theme.of(context).textTheme.display1.fontSize /
              MediaQuery.of(context).textScaleFactor),
      onTap: () {
        setState(() {
          searching = true;
        });
      },
      onSubmitted: (String search) {
        _search();
      },
    );
  }

  Widget _searchButton() {
    return IconButton(
        onPressed: () {
          _startSearch();
        },
        icon: Icon(
          Icons.search,
          size: 26.0,
        ));
  }

  void _search() {
    FocusScope.of(context).unfocus();

    searchQuery = _searchQueryController.text;
    setState(() {
      searching = false;
      _cardsState?.currentState?.spiderPage?.url = _buildQuery();
      _cardsState?.currentState?.getNews();
    });
  }

  Widget _closeButton() {
    return IconButton(
        onPressed: () {
          _clearSearchQuery();
        },
        icon: Icon(
          Icons.clear,
          size: 26.0,
        ));
  }

  void _startSearch() {
    FocusScope.of(context).requestFocus(searchFocus);

    setState(() {
      searching = true;
    });
  }

  void _clearSearchQuery() {
    FocusScope.of(context).unfocus();
    setState(() {
      searching = false;
      _searchQueryController.clear();
      searchQuery = "";
    });
  }

  String _buildQuery() {
    searchQuery = searchQuery.replaceAll(" ", "+");
    String query = "https://www.eldigitaldealbacete.com/?s=" + searchQuery;
//    print("query = " +query);
    return query;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _buildSearchField(),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 26.0,
              )),
          actions: <Widget>[searching ? _closeButton() : _searchButton()],
          backgroundColor: Theme.of(context).accentColor,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
//body:  StreamBuilder(
//  stream: urlStreamController.stream,
//  builder: (context,snapshot){
//    print("building news " + snapshot.data + "  url = " +_buildQuery());
//    return NewsCards(spiderPage: SpiderNewsListSpecificPage(url: _buildQuery()));
//  },
//)
        body: searchQuery.isNotEmpty
            ? NewsCards(
                spiderPage: SpiderNewsListSpecificPage(url: _buildQuery()),
                key: _cardsState)
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Empiece a buscar noticias con el texto de arriba",
                  style: Theme.of(context).textTheme.headline,
                ),
              )

//    body: searching? newsCards:
//      Text("a buscar"),
//
//    body: newsCards
//        body: searchQuery.isNotEmpty? newsCards
//
//
//         : Text("Empiece a buscar " +searchQuery + " state = "+ (searching ? "buscando" : "no buscando"))

        );
  }
}

Tab tabText(String text, BuildContext context) {
  return Tab(
    child: Text(text, style: Theme.of(context).textTheme.button),
  );
}
