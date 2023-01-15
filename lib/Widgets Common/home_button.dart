



import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Const/colors.dart';
import '../Const/font_styles.dart';

Widget homeButton({width, height, icon,String? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.shadowSm.size(width, height).make();
}