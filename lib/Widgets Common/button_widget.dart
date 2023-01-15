
import 'package:flutter/material.dart';

import '../Const/font_styles.dart';

Widget ourButton({onPress, color, textColor, String? tittle}) {
  return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(primary: color),
      child: Text(
        tittle!,
        style: TextStyle(color: textColor, fontFamily: bold),
      ));
}
