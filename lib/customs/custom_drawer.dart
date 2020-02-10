import 'package:flutter/material.dart';
import 'package:xlo/customs/custom_drawer/CustomHeaderDrawer.dart';
import 'package:xlo/customs/custom_drawer/icon_section.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomHeaderDrawer(),
          IconSection(),
        ],
      ),
    );
  }
}