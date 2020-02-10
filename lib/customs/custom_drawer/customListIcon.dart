import 'package:flutter/material.dart';

class CustomListIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback ontap;
  final bool onPage;

  CustomListIcon({this.icon, this.label, this.ontap, this.onPage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: onPage ? Colors.blue : Colors.black,
      ),
      title: Text(
        label,
        style: TextStyle(color: onPage ? Colors.blue : Colors.black),
      ),
      onTap: ontap,
      contentPadding: EdgeInsets.fromLTRB(40, 0, 10, 0),
    );
  }
}
