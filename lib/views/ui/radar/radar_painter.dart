import 'package:sostronk_radar/sostronk_radar_app.dart';
import 'dart:ui' as ui;

///Class for builfing the circles and arc in radar
class RadarPainter extends CustomPainter {
  final double angle;

  Paint _bgPaint = Paint()
    ..color = Color.fromRGBO(245, 170, 56, 1)
    ..strokeWidth = 1
    ..style = PaintingStyle.stroke;

  Paint _paint = Paint()
    ..color = Color.fromRGBO(245, 170, 56, 1).withOpacity(0.4)
    ..maskFilter = MaskFilter.blur(BlurStyle.inner, 1.0)
    ..style = PaintingStyle.fill;

  RadarPainter(this.angle);

  @override
  void paint(Canvas canvas, Size size) {

    /// Methods for drawing concentric circles
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 185, _bgPaint);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 155, _bgPaint);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 125, _bgPaint);

    _paint.shader = ui.Gradient.sweep(
        Offset(size.width / 2, size.height / 2),
        [
          Color.fromRGBO(23, 36, 51, 1).withOpacity(1),
          Colors.orange.withOpacity(.5)
        ],
        [.0, 1.0],
        TileMode.mirror,
        .0,
        pi);

    canvas.save();
    double r = sqrt(pow(size.width, 2) + pow(size.height, 2));
    double startAngle = atan(size.height / size.width);
    Point p0 = Point(r * cos(startAngle), r * sin(startAngle));
    Point px = Point(r * cos(angle + startAngle), r * sin(angle + startAngle));
    canvas.translate((p0.x - px.x) / 2, (p0.y - px.y) / 2);
    canvas.rotate(angle);

    ///Method for drawing arc
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 185),
        0,
        pi,
        true,
        _paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
