
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/font_styles.dart';
import 'package:recharge_app/Screens/Auth/pick_nid.dart';
import 'package:recharge_app/Screens/Auth/signup.dart';
import 'package:recharge_app/Screens/Auth/verify_you.dart';

import '../../Const/colors.dart';
import '../../Const/strings.dart';
import '../../Widgets Common/bg_widget.dart';
import '../../Widgets Common/button_widget.dart';
import '../../Widgets Common/textfield_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        Scaffold(
          backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "$appName",
              style: TextStyle(color: Colors.white,fontSize: 24,fontFamily: bold),
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
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                width:  MediaQuery.of(context).size.width - 70,
                child: Column(
                  children: [
                    customTextField(tittle: userName, hint: userName,textFieldType: TextFieldType.NAME),
                    SizedBox(height: 5,),
                    customTextField(tittle: password, hint: passHintText,textFieldType: TextFieldType.PASSWORD),
                    SizedBox(
                      height: 5,
                    ),

                    SizedBox(
                        width:  MediaQuery.of(context).size.width,
                        child: ourButton(
                            onPress: () {
                              Get.to(VerifyYouScreen());
                            },
                            color: mColor,
                            textColor: whiteColorVx,
                            tittle: login)),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          createNewAccount,
                          style: TextStyle(color: fontGrey),
                        ), TextButton(onPressed: (){
                          Get.to(PickNidScreen());
                        }, child: Text(
                          signup,
                          style: TextStyle(color: mColor),
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
    )
        );
  }
}
