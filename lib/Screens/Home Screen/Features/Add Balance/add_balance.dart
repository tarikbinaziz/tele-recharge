import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Const/colors.dart';
import '../../../../Const/strings.dart';
import '../../../../Widgets Common/bg_widget.dart';
import '../../../../Widgets Common/button_widget.dart';
import '../../../../Widgets Common/textfield_widget.dart';


class AddBalanceScreen extends StatefulWidget {
  const AddBalanceScreen({Key? key}) : super(key: key);

  @override
  State<AddBalanceScreen> createState() => _AddBalanceScreenState();
}

class _AddBalanceScreenState extends State<AddBalanceScreen> {
  bool isCheck = false;
  var hint;
  var index = 0;
  var selection = "Maneging Director";

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: mColor,
        centerTitle: true,
        elevation: 0,
        titleSpacing: 0.0,
        title: Text("$appName"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text(
                  balanceAdd,
                  style: TextStyle(
                      fontWeight: FontWeight
                          .bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  shadowColor: Colors.black,
                  elevation: 6,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),

                  ),
                ),
                SizedBox(
                  height: 10,
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
                    width: MediaQuery.of(context).size.width ,
                    child: Column(
                      children: [
                        customTextField(
                            tittle: transId,
                            hint: transId,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: amount,
                            hint: amountHint,
                            textFieldType: TextFieldType.EMAIL),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: pin,
                            hint: passHintText,
                            textFieldType: TextFieldType.PASSWORD),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ourButton(
                                onPress: () {
                                  VxToast.show(context, msg: "Please enter your correct Tranx id");
                                },
                                color:  mColor ,
                                textColor: whiteColorVx,
                                tittle: addNow)),
                        SizedBox(
                          width: 10,
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
