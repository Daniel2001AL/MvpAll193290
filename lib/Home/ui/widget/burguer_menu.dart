import 'package:flutter/material.dart';
import 'package:mvp_all/colors/colors_views.dart';

class BurguerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(5.0),
        children: <Widget>[
          Container(
            child: UserAccountsDrawerHeader(
                accountEmail: const Text(""),
                // currentAccountPicture: CircleAvatar( backgroundImage: ,),
                accountName: Row(children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR5JpVmoEgagSycNWMSxItZcR2SQFpRa10cA&usqp=CAU"),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Usuario",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ])),
            color: ColorsViews.text_header,
          ),
          const Padding(padding: EdgeInsets.only(top: 40.0, bottom: 20)),
          const ExpansionTile(
            title: Text("Desplegable 1"),
            children: <Widget>[
              Text("Opcion 1"),
              Text("Opcion 2"),
              Text("Opcion 3"),
            ],
          ),
          const ExpansionTile(
            title: Text("Desplegable 2"),
            children: <Widget>[
              Text("Opcion 1"),
              Text("Opcion 2"),
              Text("Opcion 3"),
              Text("Opcion 4"),
            ],
          )
        ],
      ),
    );
  }
}
