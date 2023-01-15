import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:recharge_app/Const/list.dart';
import 'package:recharge_app/Const/strings.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Add%20Balance/add_balance.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Add%20User/add_user.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Drive%20Pack/airtel_offer.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Drive%20Pack/bl_offer.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Drive%20Pack/gp_offer.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Drive%20Pack/skitto_offer.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Drive%20Pack/teletalk_offer.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Flexiload/flexiload_number.dart';
import 'package:recharge_app/Screens/Home%20Screen/Features/Send%20Money/send_money.dart';
import 'package:recharge_app/Widgets%20Common/button_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Const/colors.dart';
import '../../Const/font_styles.dart';
import '../../Const/images.dart';
import 'Componants/servies_list.dart';
import 'Features/Drive Pack/robi_offer.dart';
import 'Features/My Users/my_users.dart';
import 'Features/Pay Bill/pay_bill_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Initial Selected Value
  String dropdownvalue = mainBalance;
  bool isCheck = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;

  // List of items in our dropdown menu
  var items = [mainBalance, bank, drive];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mColor,
      appBar: AppBar(
        backgroundColor: mColor,
        // toolbarHeight: 80,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0.0,
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: mColor,
            ),
          ),
          title: Text(
            userName,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            level,
            style: TextStyle(fontWeight: FontWeight.bold, color: golden),
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withOpacity(0.1),
                )),
            child: Icon(
              IconlyLight.chat,
              color: golden,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            // height: context.height,
             padding: EdgeInsets.all(12),
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20),
                     topRight: Radius.circular(20))),
             child: Column(
               //mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 4.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       selectBalanceType,
                       style: TextStyle(
                           fontFamily: bold, fontSize: 16, color: mColor),
                     ),
                     Text(accountBalance, style: TextStyle(color: mColor))
                   ],
                 ),
                 16.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(
                           horizontal: 10, vertical: 10),
                       decoration: BoxDecoration(
                           border: Border.all(color: textFieldGrey),
                           borderRadius: BorderRadius.circular(5)),
                       width: 90,
                       // height: 50,
                       child: DropdownButtonHideUnderline(
                         child: DropdownButton(
                           isExpanded: true,
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
                       ),
                     ),

                     // Column(
                     //   children: List.generate(
                     //     3,
                     //     (index) => Container(
                     //       width: 80,
                     //       padding: EdgeInsets.all(6),
                     //       margin: EdgeInsets.only(bottom: 10),
                     //       decoration: BoxDecoration(
                     //           borderRadius: BorderRadius.circular(5),
                     //           border: Border.all(color: textFieldGrey)),
                     //       child: Center(
                     //           child: Text(
                     //         balanceType[index],
                     //         style: TextStyle(
                     //             color: mColor, fontFamily: semibold),
                     //       )),
                     //     ),
                     //   ),
                     // ),
                     Container(
                       padding: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle, color: mColor),
                       child: Center(
                           child: Text(balance,
                               style: TextStyle(
                                   color: Colors.white, fontSize: 24))),
                     ),
                   ],
                 ),
                 24.heightBox,
                 VxSwiper.builder(
                     itemCount: bannerList.length,
                     height: 130,
                     autoPlay: true,
                     autoPlayInterval: Duration(seconds: 3),
                     aspectRatio: 16 / 9,
                     enlargeCenterPage: true,
                     itemBuilder: (_, index) {
                       return Image.asset(
                         bannerList[index],
                         width: double.infinity,
                         fit: BoxFit.cover,
                       )
                           .box
                           .roundedSM
                           .clip(Clip.antiAlias)
                           .margin(EdgeInsets.only(right: 10))
                           .make();
                     }),
                 24.heightBox,
                 Text(
                   "Services",
                   style: TextStyle(
                       color: mColor, fontSize: 16, fontFamily: bold),
                 ),
                 16.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     servicesList(icAddBalance, addBalance).onTap(() {
                       showDialog(
                           context: context,
                           builder: (BuildContext context) {
                             return StatefulBuilder(
                               builder: (BuildContext context,
                                   Function(Function()) setState) {
                                 return Dialog(
                                     shape: RoundedRectangleBorder(
                                         borderRadius:
                                             BorderRadius.circular(
                                                 12.0)), //this right here
                                     child: Container(
                                       child: Padding(
                                         padding:
                                             const EdgeInsets.all(20.0),
                                         child: Column(
                                           mainAxisSize: MainAxisSize.min,
                                           crossAxisAlignment:
                                               CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               balanceAdd,
                                               style: TextStyle(
                                                   fontWeight:
                                                       FontWeight.bold,
                                                   color: mColor,
                                                   fontSize: 28),
                                             ),
                                             SizedBox(
                                               height: 12,
                                             ),
                                             Container(
                                               padding: EdgeInsets.all(8),
                                               decoration: BoxDecoration(
                                                   color: lightGolden,
                                                   borderRadius:
                                                       BorderRadius
                                                           .circular(10)),
                                               child: Column(
                                                 crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                 children: [
                                                   Text(
                                                     system,
                                                     style: TextStyle(
                                                         color: mColor,
                                                         fontSize: 16),
                                                   ),
                                                   Row(
                                                     children: [
                                                       Checkbox(
                                                           materialTapTargetSize:
                                                               MaterialTapTargetSize
                                                                   .shrinkWrap,
                                                           checkColor:
                                                               Colors
                                                                   .white,
                                                           shape:
                                                               CircleBorder(),
                                                           activeColor:
                                                               mColor,
                                                           value: isCheck,
                                                           onChanged:
                                                               (newValue) {
                                                             setState(() {
                                                               isCheck =
                                                                   newValue!;
                                                             });
                                                           }),
                                                       SizedBox(
                                                         width: 6,
                                                       ),
                                                       Text(
                                                         byTransId,
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
                                                               MaterialTapTargetSize
                                                                   .shrinkWrap,
                                                           checkColor:
                                                               Colors
                                                                   .white,
                                                           activeColor:
                                                               mColor,
                                                           value: isCheck2,
                                                           shape:
                                                               CircleBorder(),
                                                           onChanged:
                                                               (newValue) {
                                                             setState(() {
                                                               isCheck2 =
                                                                   newValue!;
                                                             });
                                                           }),
                                                       SizedBox(
                                                         width: 6,
                                                       ),
                                                       Text(
                                                         paymentGateWay,
                                                         style: TextStyle(
                                                           color: mColor,
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ],
                                               ),
                                             ),
                                             SizedBox(
                                               height: 8,
                                             ),
                                             Container(
                                               padding: EdgeInsets.all(8),
                                               decoration: BoxDecoration(
                                                   color: lightGolden,
                                                   borderRadius:
                                                       BorderRadius
                                                           .circular(10)),
                                               child: Column(
                                                 crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                 children: [
                                                   Text(
                                                     source,
                                                     style: TextStyle(
                                                         color: mColor,
                                                         fontSize: 16),
                                                   ),
                                                   Row(
                                                     children: [
                                                       Checkbox(
                                                           materialTapTargetSize:
                                                               MaterialTapTargetSize
                                                                   .shrinkWrap,
                                                           checkColor:
                                                               Colors
                                                                   .white,
                                                           shape:
                                                               CircleBorder(),
                                                           activeColor:
                                                               mColor,
                                                           value: isCheck3,
                                                           onChanged:
                                                               (newValue) {
                                                             setState(() {
                                                               isCheck3 =
                                                                   newValue!;
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
                                                               MaterialTapTargetSize
                                                                   .shrinkWrap,
                                                           checkColor:
                                                               Colors
                                                                   .white,
                                                           shape:
                                                               CircleBorder(),
                                                           activeColor:
                                                               mColor,
                                                           value: isCheck4,
                                                           onChanged:
                                                               (newValue) {
                                                             setState(() {
                                                               isCheck4 =
                                                                   newValue!;
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
                                                               MaterialTapTargetSize
                                                                   .shrinkWrap,
                                                           checkColor:
                                                               Colors
                                                                   .white,
                                                           shape:
                                                               CircleBorder(),
                                                           activeColor:
                                                               mColor,
                                                           value: isCheck5,
                                                           onChanged:
                                                               (newValue) {
                                                             setState(() {
                                                               isCheck5 =
                                                                   newValue!;
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
                                             ),
                                             SizedBox(
                                               height: 28,
                                             ),
                                             Center(
                                                 child: SizedBox(
                                               width:
                                                   MediaQuery.of(context)
                                                       .size
                                                       .width,
                                               child: ourButton(
                                                   color: mColor,
                                                   textColor: Colors.white,
                                                   tittle: nextButton,
                                                   onPress: () {
                                                     Navigator.push(
                                                         context,
                                                         MaterialPageRoute(
                                                             builder: (_) =>
                                                                 AddBalanceScreen()));
                                                   }),
                                             ))
                                           ],
                                         ),
                                       ),
                                     ));
                               },
                             );
                           });
                     }),
                     servicesList(icSendMoney, sendMoney).onTap(() {
                       Get.to(SendMoneyScreen());
                     }),
                     servicesList(icFlexiload, flexiload).onTap((){
                      Get.to(FlexiloadNumnerScreen());
                       })

                   ],
                 ),
                 12.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     servicesList(icRocket, rocket),
                     servicesList(icPayBil, payBill).onTap(() {Get.to(()=>PayBillScreen());}),
                     servicesList(icBbanking, bBanking)
                   ],
                 ),
                 24.heightBox,
                 Text(
                   "Others",
                   style: TextStyle(
                       color: mColor, fontSize: 16, fontFamily: bold),
                 ),
                 16.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     servicesList(icDrivePack, drivePack).onTap(() {
                       showDialog(
                           context: context,
                           builder: (_) {
                             return Dialog(
                                 insetPadding: EdgeInsets.all(16),
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(
                                         12.0)), //this right here
                                 child: Container(
                                   padding: EdgeInsets.all(8),
                                   child: Column(
                                    // mainAxisSize: MainAxisSize.min,
                                     crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(
                                             left: 14.0),
                                         child: Text(
                                           selectOperator,
                                           style: TextStyle(
                                               color: mColor,
                                               fontSize: 16,
                                               fontFamily: bold),
                                         ),
                                       ),
                                       16.heightBox,
                                       Row(
                                         mainAxisAlignment:
                                             MainAxisAlignment.spaceEvenly,
                                         children: [
                                           servicesList(imgGp, gp)
                                               .onTap(() {
                                             Get.to(GpOfferScreen());
                                           }),
                                           servicesList(imgRobi, robi)
                                               .onTap(() {
                                             Get.to(RobiOfferScreen());
                                           }),
                                           servicesList(imgBl, bl)
                                               .onTap(() {
                                             Get.to(BlOfferScreen());
                                           }),
                                         ],
                                       ),
                                       12.heightBox,
                                       Row(
                                         mainAxisAlignment:
                                             MainAxisAlignment.spaceEvenly,
                                         children: [
                                           servicesList(imgAirtel, airtel)
                                               .onTap(() {
                                             Get.to(AirtelOfferScreen());
                                           }),
                                           servicesList(
                                                   imgTeletalk, teletalk)
                                               .onTap(() {
                                             Get.to(TeletalkOfferScreen());
                                           }),
                                           servicesList(imgSkitto, skitto)
                                               .onTap(() {
                                             Get.to(SkittoOfferScreen());
                                           }),
                                         ],
                                       ),
                                       12.heightBox,
                                     ],
                                   ),
                                 ));
                           });
                     }),
                     servicesList(icRegularPack, regularPack).onTap(() {
                       showDialog(
                           context: context,
                           builder: (_) {
                             return Dialog(
                                 insetPadding: EdgeInsets.all(16),
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(
                                         12.0)), //this right here
                                 child: Container(
                                   padding: EdgeInsets.all(8),
                                   child: Column(
                                     mainAxisSize: MainAxisSize.min,
                                     crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(
                                             left: 14.0),
                                         child: Text(
                                           selectOperator,
                                           style: TextStyle(
                                               color: mColor,
                                               fontSize: 16,
                                               fontFamily: bold),
                                         ),
                                       ),
                                       16.heightBox,
                                       Row(
                                         mainAxisAlignment:
                                             MainAxisAlignment.spaceEvenly,
                                         children: [
                                           servicesList(imgGp, gp)
                                               .onTap(() {
                                             Get.to(GpOfferScreen());
                                           }),
                                           servicesList(imgRobi, robi)
                                               .onTap(() {
                                             Get.to(RobiOfferScreen());
                                           }),
                                           servicesList(imgBl, bl)
                                               .onTap(() {
                                             Get.to(BlOfferScreen());
                                           }),
                                         ],
                                       ),
                                       12.heightBox,
                                       Row(
                                         mainAxisAlignment:
                                             MainAxisAlignment.spaceEvenly,
                                         children: [
                                           servicesList(imgAirtel, airtel)
                                               .onTap(() {
                                             Get.to(AirtelOfferScreen());
                                           }),
                                           servicesList(
                                                   imgTeletalk, teletalk)
                                               .onTap(() {
                                             Get.to(TeletalkOfferScreen());
                                           }),
                                           servicesList(imgSkitto, skitto)
                                               .onTap(() {
                                             Get.to(SkittoOfferScreen());
                                           }),
                                         ],
                                       ),
                                       12.heightBox,
                                     ],
                                   ),
                                 ));
                           });
                     }),
                     servicesList(icAddUser, addUser).onTap(() {
                       Get.to(AddUserScreen());
                     })
                   ],
                 ),
                 12.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     servicesList(icMyUser, myUser).onTap(() {
                       Get.to(MyUserScreen());
                     }),
                   ],
                 ),

               ],
             ),
           ),
        ),
      ));

  }
}
