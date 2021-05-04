import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();
    paint.color = Colors.purpleAccent;
    canvas.drawPath(path, paint);

    path = Path();
    path.addOval(
      Rect.fromCircle(center: Offset(350, 680), radius: 60.0),
    );
    path.close();
    paint.color = Colors.blue;
    canvas.drawPath(path, paint);

    path = Path();
    path.addOval(
      Rect.fromCircle(center: Offset(400, 560), radius: 40.0),
    );
    path.close();
    paint.color = Colors.pinkAccent;
    canvas.drawPath(path, paint);

    path = Path();
    path.addOval(
      Rect.fromCircle(center: Offset(20, 660), radius: 80.0),
    );
    paint.color = Colors.teal;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
