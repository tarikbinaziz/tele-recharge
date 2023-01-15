import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/list.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Add%20User/add_user.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:recharge_app/Widgets%20Common/button_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../Const/colors.dart';
import '../../../../Const/font_styles.dart';
import '../../../../Const/images.dart';

class FlexiloadScreen extends StatefulWidget {
  const FlexiloadScreen({Key? key}) : super(key: key);

  @override
  State<FlexiloadScreen> createState() => _FlexiloadScreenState();
}

class _FlexiloadScreenState extends State<FlexiloadScreen> {
  // Initial Selected Value
  String dropdownvalue = gp;

  // List of items in our dropdown menu
  var items = [gp, bl, robi, teletalk, airtel];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                ListTile(
                  leading: Image.asset(
                    icProfile,
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                  title: Text("Tarik bin aziz"),
                  subtitle: Text("01641586586"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                          // isExpanded: true,
                          isDense: true,
                          underline: null,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(color: mColor),
                                ));
                          }).toList(),
                          value: dropdownvalue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ).card.color(lightGolden).rounded.make(),
                SizedBox(
                  height: 24,
                ),
                TabBar(
                  indicatorColor: redColorMain,
                  tabs: [
                    Tab(
                      text: amount,
                    ),
                    Tab(
                      text: drive,
                    ),
                    Tab(
                      text: regular_pack,
                    ),
                  ],
                  labelColor: redColorMain,
                  unselectedLabelColor: Colors.grey,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(children: [
                    Container(
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ImageIcon(
                                    AssetImage(tkSign),
                                    color: redColorMain,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: amountHint,
                                        hintStyle:
                                            TextStyle(color: textFieldGrey),
                                        contentPadding: EdgeInsets.zero),
                                  ),
                                )
                              ],
                            ),
                            20.heightBox,
                            HorizontalList(
                                itemCount: amountList.length,
                                itemBuilder: (_, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        color: redColorMain,
                                        borderRadius:
                                            BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(5),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 6),
                                      child: Text(
                                        amountList[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  );
                                }),
                            10.heightBox,
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: availableBalance,
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: " 4.50 Tk",
                                  style: TextStyle(
                                      fontFamily: bold, color: Colors.black)),
                            ])),
                            40.heightBox,
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 150,
                              child: ourButton(
                                  color: redColorMain,
                                  textColor: Colors.white,
                                  onPress: () {},
                                  tittle: nextButton),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                    ),
                    Container(
                      color: Colors.white,
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
