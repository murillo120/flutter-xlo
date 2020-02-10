import 'package:rxdart/rxdart.dart';

class DrawerBloc {

  final _pageController = BehaviorSubject<int>.seeded(4);

  Stream<int> get onPage => _pageController.stream;

  int _page = 0;

  void setpage(int page){
    if(page == _page){
      return;
    }
    print(page);
    _page = page;
    _pageController.add(page);
  }
  

  void dispose(){
    _pageController.close();
  }
  
}