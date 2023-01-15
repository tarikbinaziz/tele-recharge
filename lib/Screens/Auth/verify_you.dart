import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/font_styles.dart';
import 'package:recharge_app/Screens/Auth/pick_nid.dart';
import 'package:recharge_app/Screens/Auth/signup.dart';

import '../../Const/colors.dart';
import '../../Const/strings.dart';
import '../../Widgets Common/bg_widget.dart';
import '../../Widgets Common/button_widget.dart';
import '../../Widgets Common/textfield_widget.dart';
import '../Home Screen/home.dart';

class VerifyYouScreen extends StatelessWidget {
  const VerifyYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              verifyItsYou,
              style: TextStyle(
                  color: Colors.white, fontSize: 24, fontFamily: bold),
            ),
            SizedBox(
              height: 40,
            ),
            Material(
              shadowColor: Colors.black,
              elevation: 6,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width - 70,
                child: Column(
                  children: [
                    customTextField(
                        tittle: pin,
                        hint: pinHint,
                        textFieldType: TextFieldType.PASSWORD),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ourButton(
                            onPress: () {
                               Get.to(Home());
                            },
                            color: mColor,
                            textColor: whiteColorVx,
                            tittle: verify)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          forgotPin,
                          style: TextStyle(color: fontGrey),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(PickNidScreen());
                            },
                            child: Text(
                              contactWithSupport,
                              style: TextStyle(color: mColor, fontFamily: bold),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
