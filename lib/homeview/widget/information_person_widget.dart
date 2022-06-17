import 'package:flutter/material.dart';

class InfomationWidget extends StatelessWidget {
  const InfomationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      height: size.height * 0.2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: <InlineSpan>[
                  const TextSpan(
                    text: 'Hola',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: ' Juan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade400,
                      fontSize: 22,
                    ),
                  ),
                  const TextSpan(
                    text: ',',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            //color: Colors.blue,
            height: size.height * 0.09,
            child: Row(
              children: [
                SizedBox(
                  //color: Colors.red,
                  width: size.width * 0.15,
                  height: size.height * 0.20,
                  child: Image.asset("assets/onBoarding/B5.png"),
                ),
                SizedBox(
                  //color: Colors.amber,
                  width: size.width * 0.35,
                  height: size.height * 0.09,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.35,
                        height: size.height * 0.02,
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(
                          "Entregar ahora",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const ExpansionTile(
                        title: Text(
                          "Calle 10 9",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
