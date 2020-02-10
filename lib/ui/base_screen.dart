import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'package:xlo/blocs/drawerBloc.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();

  DrawerBloc drawerBloc;
  StreamSubscription drawersubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final bloc = Provider.of<DrawerBloc>(context);
    if (bloc != drawerBloc) {
      drawerBloc = bloc;
      drawersubscription?.cancel();
      drawersubscription = drawerBloc.onPage.listen((page) {
        pageController.jumpToPage(page);
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    drawersubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
