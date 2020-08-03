import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/widgets/voucher_card.dart';

class Vouchers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Align(
          alignment: Alignment.topLeft,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Here is what you can get",
                      style: TextStyle(
                          color: AppColors.COLOR_BLUE_GRAY,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
                VoucherCard()
              ])),
    );
  }
}
