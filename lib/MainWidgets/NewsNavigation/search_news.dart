import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/news_cards.dart';
import 'package:flutter/material.dart';

import '../../Spider/spider_news_list_specific_page.dart';

class SearchNews extends StatefulWidget {
  final String? query;
  final Function(String) onDetails;

  const SearchNews({Key? key, this.query, required this.onDetails})
      : super(key: key);

  @override
  _SearchNewsState createState() => _SearchNewsState();
}

class _SearchNewsState extends State<SearchNews>
    with SingleTickerProviderStateMixin {
  bool searching = true;

  final TextEditingController _searchQueryController = TextEditingController();
  late String searchQuery;

//  NewsCards newsCards;
  final GlobalKey<NewsCardsState> _cardsState = GlobalKey<NewsCardsState>();
  FocusNode? searchFocus;

  late Function(String) onDetails;

  _SearchNewsState();

  @override
  void initState() {
    super.initState();
    _searchQueryController.text = searchQuery;
    searchFocus = FocusNode();
    searchQuery = widget.query ?? "";
    onDetails = widget.onDetails;
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    searchFocus!.dispose();

    super.dispose();
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
              icon: const Icon(
                Icons.arrow_back,
                size: 26.0,
              )),
          actions: <Widget>[searching ? _closeButton() : _searchButton()],
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: searchQuery.isNotEmpty
            ? NewsCards(
                spiderPage: SpiderNewsListSpecificPage(url: _buildQuery()),
                onDetails: onDetails,
                key: _cardsState)
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Empiece a buscar noticias con el texto de arriba",
                    style: Theme.of(context).textTheme.headline5),
              ));
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      focusNode: searchFocus,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: "Buscar noticias",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white70),
      ),
      style: Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: Theme.of(context).textTheme.headline4!.fontSize! /
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
        icon: const Icon(
          Icons.search,
          size: 26.0,
        ));
  }

  void _search() {
    FocusScope.of(context).unfocus();

    searchQuery = _searchQueryController.text;
    setState(() {
      searching = false;
      _cardsState.currentState?.spiderPage.url = _buildQuery();
      _cardsState.currentState?.getNews();
    });
  }

  Widget _closeButton() {
    return IconButton(
        onPressed: () {
          _clearSearchQuery();
        },
        icon: const Icon(
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
}

Tab tabText(String text, BuildContext context) {
  return Tab(
    child: Text(text, style: Theme.of(context).textTheme.button),
  );
}
