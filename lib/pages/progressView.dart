import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

late Timer timer;
var porcentaje = 0;

class _ProgressViewState extends State<ProgressView> {
  @override
  Widget build(BuildContext context) {
    _timer();
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.amber,
        width: 150,
        height: 150,
        child: CustomPaint(
          painter: ProgressCustom(porcentaje),
        ),
      )),
    );
  }

  void _timer() {
    var duration = const Duration(seconds: 10);
    timer = Timer.periodic(duration, (timer) {
      porcentaje++;
    });
  }
}

class ProgressCustom extends CustomPainter {
  ProgressCustom(porcentaje);
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint();
    final paint2 = Paint();
    paint1.strokeWidth = 6;
    paint2.strokeWidth = 6;
    paint2.style = PaintingStyle.stroke;
    paint2.color = Colors.redAccent;
    final c = Offset(size.width * 0.48, size.height * 0.48);
    final radius = size.width / 2;
    // canvas.drawCircle(c, radius, paint1);
    final rectValue = Rect.fromCircle(center: c, radius: radius);
    canvas.drawArc(
        rectValue, -pi / 2, (pi * 2 * porcentaje) / 100, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
