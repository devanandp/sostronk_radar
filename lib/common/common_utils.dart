///Utility methods used for conversions are defined in the class

import 'package:sostronk_radar/sostronk_radar_app.dart';

class HexColor extends Color {
  ///This method converts the Hexcolor code passed as inputs and returns the integer color code value
  ///Input - String hexColor
  ///Output - Integer parsed value of the color code sent
  ///
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
