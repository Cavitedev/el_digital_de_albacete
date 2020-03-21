import 'package:meta/meta.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:html/dom.dart' as dom;


const String _paginationClass = "pagination";
const String _currentPageClass = "current";
const String _pageClass = "page";

class NextPageModel extends NextPage{
  NextPageModel({@required String url}) : super(url: url);
  @override
  List<Object> get props => super.props;

  factory NextPageModel.fromDocument(dom.Document document){
    dom.Element _pagesDiv =
    document.body.getElementsByClassName(_paginationClass)[0];
    int _currentPage =
    int.parse(_pagesDiv.getElementsByClassName(_currentPageClass)[0].text);
    String _nextPage = (_currentPage+1).toString();
    String _nextUrl;
//    String _nextUrl = failedLoadingNews;
    for(dom.Element element in _pagesDiv.getElementsByClassName(_pageClass)) {
      if(element.attributes['title']==_nextPage) {
        _nextUrl = element.attributes['href'];
      }
    }
    return NextPageModel(url: _nextUrl);
  }
}