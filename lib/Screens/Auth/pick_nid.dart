import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recharge_app/Const/colors.dart';
import 'package:recharge_app/Const/font_styles.dart';
import 'package:recharge_app/Const/images.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Screens/Auth/signup.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:recharge_app/Widgets%20Common/button_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class PickNidScreen extends StatelessWidget {
  const PickNidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 10,
          child:Icon(Icons.arrow_forward_sharp,color: mColor,) ,
            onPressed: () {
            Get.to(SignUpScreen());
            }),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  frontSide,
                  style: TextStyle(
                      color: Colors.white, fontFamily: bold, fontSize: 24),
                ),
                10.heightBox,
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          frontNid,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add_a_photo),
                      color: Colors.white,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return SimpleDialog(
                                titlePadding: EdgeInsets.all(12),
                                title: const Text(
                                  chooseDocument,
                                  style: TextStyle(color: mColor),
                                ),
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.camera_alt_outlined,
                                            color: Colors.white,
                                          )
                                              .box
                                              .roundedFull
                                              .color(mColor)
                                              .padding(EdgeInsets.all(8))
                                              .make(),
                                          Text(
                                            camera,
                                            style: TextStyle(color: mColor),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.image, color: Colors.white)
                                              .box
                                              .roundedFull
                                              .color(mColor)
                                              .padding(EdgeInsets.all(8))
                                              .make(),
                                          Text(
                                            gallery,
                                            style: TextStyle(color: mColor),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              );
                            });
                      },
                    )
                        .box
                        .roundedFull
                        .color(mColor)
                        .margin(EdgeInsets.symmetric(horizontal: 10))
                        .make()
                  ],
                ).box.white.roundedSM.padding(EdgeInsets.all(16)).make(),
                20.heightBox,
                Text(
                  backSide,
                  style: TextStyle(
                      color: Colors.white, fontFamily: bold, fontSize: 24),
                ),
                10.heightBox,
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          backNid,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add_a_photo),
                      color: Colors.white,
                      onPressed: () {},
                    )
                        .box
                        .roundedFull
                        .color(mColor)
                        .margin(EdgeInsets.symmetric(horizontal: 10))
                        .make()
                  ],
                ).box.white.roundedSM.padding(EdgeInsets.all(16)).make(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
