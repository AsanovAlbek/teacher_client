import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppImages {
  static const _imagesDir = 'assets/images';
  static Image person = Image.asset('$_imagesDir/person1.png');
  static SvgPicture heart = SvgPicture.asset('images/heart.svg', fit: BoxFit.cover,);
  static SvgPicture coin = SvgPicture.asset('images/coin.svg', width: 32, height: 32, fit: BoxFit.cover,);
}