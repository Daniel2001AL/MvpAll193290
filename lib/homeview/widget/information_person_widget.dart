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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  top: size.height * 0.0001,
                  bottom: size.height * 0.025,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
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
              ),
            ],
          ),
          Container(
            // color: Colors.blue,
            height: size.height * 0.05,
            child: Row(
              children: [
                Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.only(left: 18, right: 0),
                  width: size.width * 0.15,
                  height: size.height * 0.2,
                  child: Image.asset("assets/onBoarding/B5.png"),
                ),
                Container(
                  // color: Colors.amber,
                  width: size.width * 0.3,
                  height: size.height * 0.05,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Entregar ahora",
                        style: TextStyle(color: Colors.grey),
                      ),
                      //Padding(padding: EdgeInsets.only(bottom: 0)),
                      ExpansionTile(
                        title: Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "Calle 10 9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                      )
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
