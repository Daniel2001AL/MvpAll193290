import 'package:flutter/material.dart';
import 'package:mvp_all/Home/ui/widget/image_row.dart';

import '../../../colors/colors_views.dart';
import '../widget/burguer_menu.dart';
import '../widget/slider_widget.dart';

class HomeVetApp extends StatefulWidget {
  const HomeVetApp({Key? key}) : super(key: key);

  @override
  State<HomeVetApp> createState() => _HomeVetAppState();
}

class _HomeVetAppState extends State<HomeVetApp> {
  int pageIndex = 0;
  int _selectedIndex = 1;

  final List<Widget> _pages = <Widget>[
    Container(),
    ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 40, top: 30),
          child: Carousel(),
        ),
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: const EdgeInsets.all(15),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,

          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: circular_events(),
            ),
          ),
        ),
        const ImageRow()
      ],
    ),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorsViews.text_header,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4, right: 15),
            child: Image.asset(
              'assets/image/splash.png',
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: BurguerMenu(),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.one_x_mobiledata),
            label: 'XXX',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

List<Padding> circular_events() {
  List<Padding> circular_event = List<Padding>.generate(
    5,
    (index) => Padding(
      padding: const EdgeInsets.only(left: 25),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 85.0,
          height: 85.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgJRHOV9aFEVFUPgUjBruI1oK3lJWsHoiY-w&usqp=CAU"),
            ),
          ),
        ),
      ),
    ),
  );

  return circular_event;
}

List<Padding> image_events() {
  List<Padding> circular_event = List<Padding>.generate(
    3,
    (index) => Padding(
      padding: const EdgeInsets.only(left: 20, right: 25),
      child: InkWell(
        // No me deja manejar eventos
        onTap: () {},
        child: Container(
          width: 80,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg"),
            ),
          ),
        ),
      ),
    ),
  );

  return circular_event;
}
