import 'package:sostronk_radar/sostronk_radar_app.dart';

///Helper class to detect the mode in whch app is rendering - Portrait or Landscape and return the response accordingly.
///Helps in achieving UI responsiveness
class OrientationHelper extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;

  const OrientationHelper(
      {required Key key, required this.portrait, required this.landscape})
      : super(key: key);

  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  static bool isLandScape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return portrait;
        } else {
          return landscape;
        }
      },
    );
  }
}
