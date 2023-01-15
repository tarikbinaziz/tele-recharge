import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:recharge_app/Widgets%20Common/button_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Const/colors.dart';
import '../../../../Const/list.dart';
import '../../../../Const/strings.dart';
import '../../../../Widgets Common/bg_widget.dart';
import '../../../../Widgets Common/textfield_widget.dart';


class PayBillScreen extends StatefulWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  State<PayBillScreen> createState() => _PayBillScreenState();
}

class _PayBillScreenState extends State<PayBillScreen> {
  bool isCheck = false;
  var hint;
  var index = 0;
  var selection = "Maneging Director";
  var paySelect="Dish Bill";

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        backgroundColor: mColor,
        elevation: 0,
        title: Text(
          billPayment,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
        ) ,
      ),
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

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
                        SizedBox(
                          height: 55.0,
                          child: FormField(
                            builder: (FormFieldState<dynamic> field) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    labelText: 'Your Identity',
                                    filled: true,
                                    fillColor: lightGreyVx,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: mColor)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: mColor)),
                                    labelStyle: TextStyle(color: mColor)),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: paySelect,
                                        alignment:
                                        AlignmentDirectional.topStart,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mColor,
                                        ),
                                        items: payBillOption.map((String payBillOption) {
                                          return DropdownMenuItem(
                                              child: Text(
                                                payBillOption,
                                                style: TextStyle(color: mColor),
                                              ),
                                              value: payBillOption);
                                        }).toList(),
                                        onChanged: (val2) {
                                          setState(() {
                                            paySelect = val2!;
                                          });
                                        })),
                              );
                            },
                          ),
                        ),
                        customTextField(
                            tittle: "AC Number",
                            hint: 'Enter AC number',
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: mobileNo,
                            hint: passHintText,
                            textFieldType: TextFieldType.NUMBER),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: fullName,
                            hint: nameHint,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: "Amount",
                            hint: passHintText,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: "Note",
                            hint: "Enter note",
                            textFieldType: TextFieldType.MULTILINE),
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
                        ourButton(onPress: (){},tittle: "SUBMIT")

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
