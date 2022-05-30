import 'package:flutter/material.dart';

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
          margin: EdgeInsets.all(5),

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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text("Husky")
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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text("Husky")
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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text("Husky")
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
          margin: EdgeInsets.all(5),

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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text('Husky')
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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text("Husky")
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
                                    'https://www.caracteristicas.co/wp-content/uploads/2017/02/perro-3-e1561679226953.jpg',
                                    'Bonita imagen de perro Husky'),
                              ),
                            );
                          },
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
                        const Text("Husky")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
