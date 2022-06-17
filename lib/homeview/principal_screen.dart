import 'package:flutter/material.dart';
import './widget/app_barr.dart';
import './widget/bar_products_widget.dart';
import './widget/bar_services_widget.dart';
import './widget/carrusel_card_widget.dart';
import './widget/carrusel_widget.dart';
import './widget/information_person_widget.dart';

import './widget/busqueda_bar_widget.dart';
import './widget/mascotas_widget.dart';
import './widget/opciones_servicios_widget.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const CustomBottomNav(),
      extendBody: true,
      appBar: const AppBarTiendaWidget(),
      body: SafeArea(
        // child: BasicInformationWidget(size: size),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DescriptionWidget(size: size),
              const Divider(thickness: 2),
              MascotasWidget(size: size),
              OpcionesProductosWidget(size: size),
              BarBusquedaWidget(size: size),
              CarrouselImagePrincipal(size: size),
              const Divider(thickness: 2),
              ProductosSecaWidget(size: size),
              CarrouselImageCard(size: size),
              const Divider(thickness: 2),
              ServiceSecaWidget(size: size),
              CarrouselImageCard(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.16,
      child: Row(
        children: [
          InfomationWidget(size: size),
          SizedBox(
            width: size.width * 0.47,
            height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.4,
                    child: Image.asset("assets/onBoarding/B5.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0,
                      left: size.height * 0,
                      right: size.height * 0,
                      bottom: 0),
                  child: const ExpansionTile(
                    textColor: Colors.black,
                    collapsedBackgroundColor:
                        Color.fromARGB(255, 231, 231, 231),
                    title: Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'Entrega domicilio',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    children: <Widget>[],
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

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          size: Size(size.width, 110),
          painter: MyCustomPainter(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.accessible_rounded,
                  size: 100,
                  color: Colors.white,
                ),
                Icon(
                  Icons.abc_sharp,
                  size: 100,
                  color: Colors.white,
                ),
                Icon(
                  Icons.access_time,
                  size: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color.fromARGB(255, 55, 145, 0);

    paint.style = PaintingStyle.fill;

    paint.strokeWidth = 20;

    final path0 = Path();

    path0.moveTo(size.width * -0.0008000, size.height * 1.0080000);
    path0.lineTo(0, size.height * 0.3400000);
    path0.quadraticBezierTo(size.width * 0.0850000, size.height * 0.3057000,
        size.width * 0.1274000, size.height * 0.3044000);
    path0.cubicTo(
        size.width * 0.2062500,
        size.height * 0.2785000,
        size.width * 0.3639500,
        size.height * 0.5331000,
        size.width * 0.5012000,
        size.height * 0.5000000);
    path0.cubicTo(
        size.width * 0.6776500,
        size.height * 0.5087000,
        size.width * 0.7425500,
        size.height * 0.2829000,
        size.width * 0.8262000,
        size.height * 0.3044000);
    path0.quadraticBezierTo(size.width * 0.9100500, size.height * 0.2945000,
        size.width * 0.9992000, size.height * 0.4072000);
    path0.lineTo(size.width * 0.9992000, size.height * 1.0080000);

    canvas.drawPath(path0, paint);

    canvas.scale(0.15, 0.15);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
