import 'package:flutter/material.dart';

import '../Const/images.dart';


Widget bgWidget(Widget? child) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}
