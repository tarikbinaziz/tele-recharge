


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const/images.dart';

Widget appLogoWidget(){
  return Container(
    height: 77,
    width: 77,
    decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(appLogo),
    ),
  );
}