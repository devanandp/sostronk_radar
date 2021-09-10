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
    ..color = MyColors().radarGradientMixer4.withOpacity(0.5)
    ..maskFilter = MaskFilter.blur(BlurStyle.inner, 1.0)
    ..style = PaintingStyle.fill;

  RadarPainter(this.angle);

  @override
  void paint(Canvas canvas, Size size) {
    /// Methods for drawing concentric circles
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 165.toWidth, _bgPaint);

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 135.toWidth, _bgPaint);

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 95.toWidth, _bgPaint);

    /// Radial Gradient helping on achieving radar gradient
    _paint.shader = ui.Gradient.radial(
      Offset(size.width / 2, size.height / 2),
      270.toWidth,
      [
        MyColors().radarGradientMixer1,
        MyColors().radarGradientMixer2,
        MyColors().radarGradientMixer3,
        MyColors().radarGradientMixer4,
      ],
      [0, 0.7, 0.6, 0],
      TileMode.clamp,
    );

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
            center: Offset(size.width / 2, size.height / 2),
            radius: 165.toWidth),
        0,
        -pi,
        true,
        _paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
