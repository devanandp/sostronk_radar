import 'package:sostronk_radar/sostronk_radar_app.dart';

///Class for creating and implementing the radar view
class RadarView extends StatefulWidget {
  @override
  _RadarViewState createState() => _RadarViewState();
}

class _RadarViewState extends State<RadarView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: pi * 2).animate(
        new CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.animateBack(1.0, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          painter: RadarPainter(_animation.value),
        );
      },
    );
  }
}
