import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class ImageDescription extends StatelessWidget {
  final String url, description;
  const ImageDescription(this.url, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.all(30.0)),
            Image.network(url),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Center(
              child: Text(
                description,
                style: const TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ));
  }
}
