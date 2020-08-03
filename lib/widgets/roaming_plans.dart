import 'package:flutter/material.dart';
import 'package:flutterproject/common/gradient.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/widgets/promos_card.dart';

class RoamingPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(text: "Roaming Plans", colors: [
                AppColors.COLOR_SAPPRINE,
                AppColors.COLOR_LAVENDER_PINK
              ]),
            ],
          ),
          PromoCard('GoSakto', 'Planing for a foreign trip?',
              'Roam worry free!', 'Explore Roaming Packs')
        ]));
  }
}
