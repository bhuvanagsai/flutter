import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/resources/images.dart';

class GlobeRewardCard extends StatelessWidget {
  final String rewardText;
  final String rewards;
  GlobeRewardCard(this.rewardText, this.rewards);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [AppColors.COLOR_TANGERINE, AppColors.COLOR_MANGO])),
        margin: EdgeInsets.only(top: 12),
        child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 6),
                          child: Text(
                            rewardText,
                            style: TextStyle(
                                color: AppColors.COLOR_WHITE,
                                fontSize: 11,
                                fontWeight: (FontWeight.w600)),
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: rewards,
                              style: TextStyle(
                                  color: AppColors.COLOR_WHITE,
                                  fontSize: 20,
                                  fontWeight: (FontWeight.w700),
                                  letterSpacing: -0.69)),
                          TextSpan(
                              text: " Pts",
                              style: TextStyle(
                                  color: AppColors.COLOR_WHITE,
                                  fontSize: 20,
                                  fontWeight: (FontWeight.w400),
                                  letterSpacing: 0)),
                        ]))
                      ]),
                  Image.asset(Images.REWARD_IMAGE)
                ])));
  }
}
