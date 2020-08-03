import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/common/gradient.dart';
import 'package:flutterproject/widgets/globe_reward_card.dart';

class GlobeRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(text: "Globe Rewards", colors: [
                AppColors.COLOR_SAPPRINE,
                AppColors.COLOR_LAVENDER_PINK
              ]),
            ],
          ),
          GlobeRewardCard('Your Reward Points', '7250')
        ]));
  }
}
