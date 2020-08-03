import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';
import 'package:flutterproject/themes/colors.dart';

class MyPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("My Prepaid",
                style: TextStyle(
                  color: AppColors.COLOR_GREYISH_BROWN,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ))),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('092787368820',
                      style: TextStyle(
                        color: AppColors.COLOR_BLACK,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        Images.ARROW_ICON,
                        height: 20,
                        width: 20,
                      ))
                ],
              ),
              Container(
                child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      Images.ADD_ICON,
                      height: 20,
                      width: 20,
                    )),
              )
            ],
          ),
        )
      ],
    ));
  }
}
