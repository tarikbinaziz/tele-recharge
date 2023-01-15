import 'package:flutter/material.dart';
import 'package:recharge_app/Const/colors.dart';
import 'package:recharge_app/Const/font_styles.dart';

Widget checkBalance(String text,onpress) {
  return SizedBox(
    width: 150,
    child: TextButton(

      style: TextButton.styleFrom(
        foregroundColor: mColor
      ),
      onPressed: onpress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle( fontSize: 18,fontFamily: regular,color: mColor),
          ),
         Icon(Icons.arrow_forward_ios_rounded,size: 16,color: golden,)
        ],
      ),
    ),
  );
}
