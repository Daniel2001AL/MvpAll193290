import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Padding(padding: EdgeInsets.only(top: 30));
    return CarouselSlider(
        items: [
          Container(
              decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 138, 138, 138),
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                  "https://s1.eestatic.com/2020/08/26/curiosidades/mascotas/mascotas-perros-gatos_515959375_158488465_1706x960.jpg"),
              fit: BoxFit.cover,
            ),
          )),
          Container(
              decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 138, 138, 138),
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                  "https://estudiantes.ucontinental.edu.pe/wp-content/uploads/2020/03/Datos-que-debes-tener-en-cuenta-si-tienes-una-mascota-en-casa.jpg"),
              fit: BoxFit.cover,
            ),
          )),
          Container(
              decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 100, 100, 100),
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbA1Y0fnT3Y91ssQdIsA4J9wmGZQ7yR50mkbVwbPM4s_lB5ESJtDavrvfVrgbffLqd_tU&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          )),
        ],
        options: CarouselOptions(
            height: 190,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 3),
            scrollDirection: Axis.horizontal));
  }
}

// class Carousel extends StatefulWidget {
//   const Carousel({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Carousel> createState() => _CarouselState();
// }

// class _CarouselState extends State<Carousel> {
//   late PageController _pageController;

//   List<String> images = [
//     "https://s1.eestatic.com/2020/08/26/curiosidades/mascotas/mascotas-perros-gatos_515959375_158488465_1706x960.jpg",
//     "https://estudiantes.ucontinental.edu.pe/wp-content/uploads/2020/03/Datos-que-debes-tener-en-cuenta-si-tienes-una-mascota-en-casa.jpg",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbA1Y0fnT3Y91ssQdIsA4J9wmGZQ7yR50mkbVwbPM4s_lB5ESJtDavrvfVrgbffLqd_tU&usqp=CAU"
//   ];

//   int activePage = 1;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           child: PageView.builder(
//               itemCount: images.length,
//               pageSnapping: true,
//               controller: _pageController,
//               onPageChanged: (page) {
//                 setState(() {
//                   activePage = page;
//                 });
//               },
//               itemBuilder: (context, pagePosition) {
//                 bool active = pagePosition == activePage;
//                 return slider(images, pagePosition, active);
//               }),
//         ),
//         Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: indicators(images.length, activePage))
//       ],
//     );
//   }
// }

// imageAnimation(PageController animation, images, pagePosition) {
//   return AnimatedBuilder(
//     animation: animation,
//     builder: (context, widget) {
//       return SizedBox(
//         width: 200,
//         height: 200,
//         child: widget,
//       );
//     },
//     child: Container(
//       margin: const EdgeInsets.all(10),
//       child: Image.network(images[pagePosition]),
//     ),
//   );
// }

// List<Widget> indicators(imagesLength, currentIndex) {
//   return List<Widget>.generate(imagesLength, (index) {
//     print(currentIndex);
//     return Container(
//       margin: const EdgeInsets.all(3),
//       width: 10,
//       height: 10,
//       decoration: BoxDecoration(
//           color: currentIndex == index ? Colors.black : Colors.black26,
//           shape: BoxShape.circle),
//     );
//   });
// }

// AnimatedContainer slider(images, pagePosition, active) {
//   double margin = active ? 10 : 20;
//   return AnimatedContainer(
//     duration: const Duration(milliseconds: 30),
//     curve: Curves.easeInOutCubic,
//     margin: EdgeInsets.all(margin),
//     decoration: BoxDecoration(
//         image: DecorationImage(image: NetworkImage(images[pagePosition]))),
//   );
// }
