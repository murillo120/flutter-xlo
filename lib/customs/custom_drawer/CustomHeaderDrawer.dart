import 'package:flutter/material.dart';

class CustomHeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40),
      color: Colors.blue,
      height: 115,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
          VerticalDivider(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Murillo Pereira",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                Text("mu@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
