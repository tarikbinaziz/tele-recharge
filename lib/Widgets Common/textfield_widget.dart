

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Const/colors.dart';
import '../Const/font_styles.dart';

Widget customTextField({String? tittle,String? hint,controller,TextFieldType? textFieldType}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Text(
          tittle!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: mColor,
          ),
        ),
      ),

      AppTextField(
        textFieldType: textFieldType!,
        suffixIconColor: mColor,
        decoration: InputDecoration(
            fillColor: lightGreyVx,
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(fontFamily: semibold,color: textFieldGrey),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: mColor))
        ),
      ),
     //  TextFormField(
     // //   controller: controller,
     //    decoration: InputDecoration(
     //      isDense: true,
     //      fillColor: lightGreyVx,
     //      filled: true,
     //      hintText: hint,
     //      hintStyle: TextStyle(fontFamily: semibold,color: textFieldGrey),
     //      border: InputBorder.none,
     //      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: redColorMain))
     //    ),
     //
     //  ),
      SizedBox(height: 5,),


    ],
  );
}
