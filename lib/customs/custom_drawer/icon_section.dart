import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'customListIcon.dart';
import 'package:xlo/blocs/drawerBloc.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerBloc = Provider.of<DrawerBloc>(context);

    void setPage(int page) {
      Navigator.of(context).pop();
      drawerBloc.setpage(page);
    }

    return StreamBuilder<int>(
      stream: drawerBloc.onPage,
      builder: (context, snapshot) {
        return Column(
          children: <Widget>[
            CustomListIcon(
              icon: Icons.list,
              label: "Anúncios",
              onPage: snapshot.data == 0 ? true : false,
              ontap: () {
                setPage(0);
              },
            ),
            CustomListIcon(
                icon: Icons.mode_edit,
                label: "Inserir Anúncio",
                onPage: snapshot.data == 1 ? true : false,
                ontap: () {
                  setPage(1);
                }),
            CustomListIcon(
                icon: Icons.chat,
                label: "Chat",
                onPage: snapshot.data == 2 ? true : false,
                ontap: () {
                  setPage(2);
                }),
            CustomListIcon(
                icon: Icons.favorite,
                label: "Favoritos",
                onPage: snapshot.data == 3 ? true : false,
                ontap: () {
                  setPage(3);
                }),
            CustomListIcon(
                icon: Icons.person,
                label: "Minha Conta",
                onPage: snapshot.data == 4 ? true : false,
                ontap: () {
                  setPage(4);
                }),
            Divider(
              color: Colors.grey[500],
            )
          ],
        );
      }
    );
  }
}
