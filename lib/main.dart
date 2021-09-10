import 'package:sostronk_radar/sostronk_radar_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SoStronkRadarAnimationApp(),
    );
  }
}
