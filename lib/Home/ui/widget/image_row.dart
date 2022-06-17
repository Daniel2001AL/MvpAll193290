import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';
import 'image_description.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: const EdgeInsets.all(5),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHK4agIAvZtDs4Mt1-kxckC-Vqztk4G7Hhw&usqp=CAU',
                                    'Panda con pena'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHK4agIAvZtDs4Mt1-kxckC-Vqztk4G7Hhw&usqp=CAU"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Pena",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://i0.wp.com/hipertextual.com/wp-content/uploads/2022/01/sid-balachandran-_9a-3NO5KJE-unsplash-scaled.jpg?fit=2560%2C1704&quality=50&strip=all&ssl=1',
                                    'Panda con hambre'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2022/01/sid-balachandran-_9a-3NO5KJE-unsplash-scaled.jpg?fit=2560%2C1704&quality=50&strip=all&ssl=1"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Hambre",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://www.ngenespanol.com/wp-content/uploads/2018/08/¿Por-qué-es-tan-difícil-que-se-reproduzcan-los-pandas-1280x720.jpg',
                                    'Panda con sueño'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://www.ngenespanol.com/wp-content/uploads/2018/08/¿Por-qué-es-tan-difícil-que-se-reproduzcan-los-pandas-1280x720.jpg"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Sueño",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: const EdgeInsets.all(5),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHK4agIAvZtDs4Mt1-kxckC-Vqztk4G7Hhw&usqp=CAU',
                                    'Panda con pena'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVHK4agIAvZtDs4Mt1-kxckC-Vqztk4G7Hhw&usqp=CAU"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Pena",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://i0.wp.com/hipertextual.com/wp-content/uploads/2022/01/sid-balachandran-_9a-3NO5KJE-unsplash-scaled.jpg?fit=2560%2C1704&quality=50&strip=all&ssl=1',
                                    'Panda con hambre'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2022/01/sid-balachandran-_9a-3NO5KJE-unsplash-scaled.jpg?fit=2560%2C1704&quality=50&strip=all&ssl=1"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Hambre",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ImageDescription(
                                    'https://www.ngenespanol.com/wp-content/uploads/2018/08/¿Por-qué-es-tan-difícil-que-se-reproduzcan-los-pandas-1280x720.jpg',
                                    'Panda con sueño'),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://www.ngenespanol.com/wp-content/uploads/2018/08/¿Por-qué-es-tan-difícil-que-se-reproduzcan-los-pandas-1280x720.jpg"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Sueño",
                          style: TextStyle(
                              color: ColorsViews.text_header,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
