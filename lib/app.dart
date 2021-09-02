import 'package:sostronk_radar/sostronk_radar_app.dart';

///App kickstarting file which helps in loading the main UI screen to be loaded first. Have instances of Providers
///declaration and initialization also which serves a global declaration across the project
class SoStronkRadarAnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
