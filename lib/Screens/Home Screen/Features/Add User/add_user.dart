import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Const/colors.dart';
import '../../../../Const/font_styles.dart';
import '../../../../Const/list.dart';
import '../../../../Const/strings.dart';
import '../../../../Widgets Common/applogo_widget.dart';
import '../../../../Widgets Common/bg_widget.dart';
import '../../../../Widgets Common/button_widget.dart';
import '../../../../Widgets Common/textfield_widget.dart';
import '../../../Auth/login.dart';
import 'package:velocity_x/velocity_x.dart';


class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  bool isCheck = false;
  var hint;
  var index = 0;
  var selection = "Maneging Director";

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        backgroundColor: mColor,
        elevation: 0,
        title: Text(
          addNewUser,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
        ) ,
      ),
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: golden,
        elevation: 5,
        onPressed: () {
          VxToast.show(
              context, msg: "Please enter details",
          textColor: Colors.red);
        },
        child: Center(
            child: Text(
          "Add",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
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
                        customTextField(
                            tittle: userName,
                            hint: userNameHint,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: email,
                            hint: emailHintText,
                            textFieldType: TextFieldType.EMAIL),
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
                            tittle: nidNo,
                            hint: passHintText,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: dateOfBirth,
                            hint: passHintText,
                            textFieldType: TextFieldType.NAME),
                        SizedBox(
                          height: 5,
                        ),
                        customTextField(
                            tittle: password,
                            hint: passHintText,
                            textFieldType: TextFieldType.PASSWORD),
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
                                        value: selection,
                                        alignment:
                                            AlignmentDirectional.topStart,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mColor,
                                        ),
                                        items: identity.map((String identity) {
                                          return DropdownMenuItem(
                                              child: Text(
                                                identity,
                                                style: TextStyle(color: mColor),
                                              ),
                                              value: identity);
                                        }).toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            selection = val!;
                                          });
                                        })),
                              );
                            },
                          ),
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
