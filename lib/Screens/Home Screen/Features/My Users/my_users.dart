import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Add%20User/add_user.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../Const/colors.dart';
import '../../../../Const/font_styles.dart';

class MyUserScreen extends StatelessWidget {
  const MyUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: golden,
          elevation: 5,
          onPressed: () {Get.to(AddUserScreen());
          },
          icon: Icon(Icons.person),
          label: Text("Add user"),
          // child: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     ,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          ),


        appBar: AppBar(
          backgroundColor: mColor,
          elevation: 0,
          title: Text(
            myUser,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              AppTextField(
                textFieldType: TextFieldType.NAME,
                // suffixIconColor: mColor,
                decoration: InputDecoration(
                    fillColor: lightGreyVx,
                    filled: true,
                    hintText: search,
                    hintStyle:
                        TextStyle(fontFamily: semibold, color: textFieldGrey),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: mColor,
                        )),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mColor))),
              ),
              SizedBox(height: 100,),
              Text(
                noResultFound,
                style: TextStyle(color: redColorMain,fontWeight: FontWeight.bold),
              ).box.white.padding(EdgeInsets.all(40)).rounded.make()
            ],
          ),
        ),
      ),
    );
  }
}
