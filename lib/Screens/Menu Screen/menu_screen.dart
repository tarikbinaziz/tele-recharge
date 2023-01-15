import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recharge_app/Const/colors.dart';
import 'package:recharge_app/Const/font_styles.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Const/images.dart';
import '../Home Screen/Componants/servies_list.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                accountSettings,
                style: TextStyle(fontFamily: bold, fontSize: 16, color: mColor),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  servicesList(icProfile, profile),
                  servicesList(icPassword, password),
                  servicesList(icPin, pin),

                ],

              ),
              12.heightBox,
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              servicesList(icTwoStep, twoStep),
              servicesList(icDeviceLock, deviceLock),
              servicesList(icLogOut, logout),

            ],
          ),
              24.heightBox,
              Text(
                support,
                style: TextStyle(fontFamily: bold, fontSize: 16, color: mColor),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  servicesList(icCallCenter, support),
                  servicesList(icNotice, notice),
                  Opacity(opacity: 0,
                  child: servicesList(icPin, pin)),

                ],

              ),
              24.heightBox,
              Text(
                otherService,
                style: TextStyle(fontFamily: bold, fontSize: 16, color: mColor),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  servicesList(icWhatsapp, whatsapp),
                  servicesList(icTelegram, telegram),
                  servicesList(icYoutube, youtube),


                ],

              ),
              12.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  servicesList(icShopping, shopping),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
