import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/common/gradient.dart';
import 'package:flutterproject/widgets/latest_promo_card.dart';

class LatestPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 16, 0, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GradientText(text: "Latest Promos", colors: [
                      AppColors.COLOR_SAPPRINE,
                      AppColors.COLOR_LAVENDER_PINK
                    ]),
                    GestureDetector(
                        onTap: () {},
                        child: Text("View All",
                            style: TextStyle(
                              color: AppColors.COLOR_LIGHTISH_BLUE,
                              fontSize: 13,
                              fontWeight: (FontWeight.w600),
                            ))),
                  ]),
            ),
            LatestPromoCard(),
          ],
        ));
  }
}
