import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Add%20User/add_user.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Flexiload/flexiload.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../Const/colors.dart';
import '../../../../Const/font_styles.dart';
import '../../../../Const/images.dart';

class FlexiloadNumnerScreen extends StatelessWidget {
  const FlexiloadNumnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: mColor,
          elevation: 0,
          title: Text(
            mobileRecharge,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                        fillColor: lightGreyVx,
                        filled: true,
                        label: Text(enterNameOrNumber),
                        labelStyle: TextStyle(color: mColor),
                        suffixIcon: IconButton(
                            onPressed: () {
                              Get.to(FlexiloadScreen());
                            },
                            icon: Icon(
                              Icons.send,
                              color: mColor,
                            )),
                        border: InputBorder.none,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mColor))),
                  ),
                ),
                SizedBox(height: 24,),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_,index){
                      return ListTile(
                        leading: Image.asset(
                          icProfile,
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        title: Text("Tarik bin aziz"),
                        subtitle: Text("01641586586"),
                      ).box.white.margin(EdgeInsets.only(bottom: 10)).shadowSm.rounded.make();
                    })

              ],
            ),
          ),
        ),
      );

  }
}
