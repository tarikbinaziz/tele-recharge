import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Widgets%20Common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Const/colors.dart';
import '../../../../Const/font_styles.dart';
import '../../../../Const/images.dart';

class SkittoOfferScreen extends StatelessWidget {
  const SkittoOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: mColor,
          elevation: 0,
          title: Text(
            skittoOffer,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
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
                SizedBox(height: 24,),
                ListView.builder(
                  shrinkWrap: true,

                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_,index){
                  return ListTile(
                    isThreeLine: true,
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgSkitto,
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    title: Text("100 min 2gb 7 days"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Amount:68.00"),
                      Text("Commission:1.00"),
                      Text("Offer price:67"),
                    ],),
                  ).box.white.margin(EdgeInsets.only(bottom: 10)).rounded.make();
                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
