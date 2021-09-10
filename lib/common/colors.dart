///Defined the colors to be used across the application as constant values in a Singleton Instance

import 'package:sostronk_radar/sostronk_radar_app.dart';

class MyColors {
  MyColors._();

  static final MyColors _instance = MyColors._();

  factory MyColors() => _instance;

  Color backGroundLinearGradientColor1 = HexColor('#0F1923');
  Color backGroundLinearGradientColor2 = HexColor('#1C2B3E');
  Color bottomListBorderColor = HexColor('#475D75');
  Color radarGradientMixer1 = HexColor('#172433');
  Color radarGradientMixer2 = HexColor('#574023');
  Color radarGradientMixer3 = HexColor('#172433');
  Color radarGradientMixer4 = HexColor('#F5AA38');
}
