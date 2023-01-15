import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Const/colors.dart';
import '../../../../Const/strings.dart';
import '../../../../Widgets Common/bg_widget.dart';
import '../../../../Widgets Common/button_widget.dart';
import '../../../../Widgets Common/textfield_widget.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;

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
                  balanceTransfer,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              source,
                              style: TextStyle(color: mColor, fontSize: 16),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    checkColor: Colors.white,
                                    shape: CircleBorder(),
                                    activeColor: mColor,
                                    value: isCheck3,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isCheck3 = newValue!;
                                      });
                                    }),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  mainBalance,
                                  style: TextStyle(
                                    color: mColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    checkColor: Colors.white,
                                    activeColor: mColor,
                                    shape: CircleBorder(),
                                    value: isCheck4,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isCheck4 = newValue!;
                                      });
                                    }),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  drive,
                                  style: TextStyle(
                                    color: mColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    checkColor: Colors.white,
                                    activeColor: mColor,
                                    shape: CircleBorder(),
                                    value: isCheck5,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isCheck5 = newValue!;
                                      });
                                    }),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  bank,
                                  style: TextStyle(
                                    color: mColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 24,),
                        customTextField(
                            tittle: userName,
                            hint: userNameHint,
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
                            tittle: note,
                            hint: noteHint,
                            textFieldType: TextFieldType.MULTILINE),
                        SizedBox(
                          height: 10,
                        ), customTextField(
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
                                  VxToast.show(context,
                                      msg:
                                          "Please enter your correct Tranx id");
                                },
                                color: mColor,
                                textColor: whiteColorVx,
                                tittle: transfer)),
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
