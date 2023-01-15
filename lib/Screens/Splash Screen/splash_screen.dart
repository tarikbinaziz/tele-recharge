import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:recharge_app/Const/colors.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Const/images.dart';
import '../../Const/strings.dart';
import '../Auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return bgWidget(
       Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  appLogo,
                  width: 150,
                ),
                 Text(
                  appName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
