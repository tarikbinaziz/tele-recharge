import 'package:flutter/cupertino.dart';
import 'package:recharge_app/Const/font_styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Const/colors.dart';

Widget servicesList(String? image, String? text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        image!,
        width: 40,
        height: 40,
        fit: BoxFit.fill,
      ),
      5.heightBox,
      FittedBox(
        child: Text(
          text!,
          style: TextStyle(color: mColor,fontFamily: semibold),
        ),
      )
    ],
  ).box
      .border(color: textFieldGrey)
      .roundedSM
      .width(95)
      .height(80)

  //  .padding(EdgeInsets.all(4))
      .make();
}
