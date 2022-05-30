import 'package:flutter/material.dart';

class BurguerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(5.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
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
                  children: const <Widget>[Text("User"), Text("@data")],
                )
              ])),
          const Padding(padding: EdgeInsets.only(top: 40.0, bottom: 20)),
          const ExpansionTile(
            title: Text("Expansion Title"),
            children: <Widget>[
              Text("objeto 1"),
              Text("objeto 2"),
              Text("objeto 3"),
              Text("objeto 4"),
              Text("objeto 5"),
            ],
          ),
          const ExpansionTile(
            title: Text("Expansion Title"),
            children: <Widget>[
              Text("objeto 1"),
              Text("objeto 2"),
              Text("objeto 3"),
              Text("objeto 4"),
            ],
          )
        ],
      ),
    );
  }
}
