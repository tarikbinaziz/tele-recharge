import 'package:flutter/cupertino.dart';
import 'package:recharge_app/Const/colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("No history",style: TextStyle(color: mColor),)),
    );
  }
}
