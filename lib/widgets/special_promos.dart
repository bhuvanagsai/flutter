import 'package:flutter/material.dart';
import 'package:flutterproject/common/gradient.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/widgets/promos_card.dart';

class SpecialPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GradientText(text: "Special Promos", colors: [
                AppColors.COLOR_SAPPRINE,
                AppColors.COLOR_LAVENDER_PINK
              ]),
              PromoCard('GoSakto', 'Create What Matters',
                  'Promo that’s all you!', 'Create your own Promo')
            ]),
      ),
    );
  }
}
