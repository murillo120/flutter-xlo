import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/ui/base_screen.dart';
import 'package:xlo/blocs/drawerBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<DrawerBloc>(
            create: (_) => DrawerBloc(),
            dispose: (context, value) => value.dispose(),
          )
        ],
        child: MaterialApp(
        title: 'XLO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BaseScreen(),
      ),
    );
  }
}