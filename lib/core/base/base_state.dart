import '../constants/border/border_constants.dart';
import '../constants/color/color_constants.dart';

abstract class BaseState {
  ColorConstants colorConstants = ColorConstants.instance;
  BorderConstants borderConstants = BorderConstants.instance;
}
