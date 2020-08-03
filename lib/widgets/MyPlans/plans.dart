import 'package:flutter/material.dart';
import 'package:flutterproject/resources/string.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/widgets/MyPlans/plans_card.dart';
import 'package:flutterproject/widgets/MyPlans/recommended_plans.dart';

class Plans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      decoration: new BoxDecoration(
        color: AppColors.COLOR_ICE_BLUE,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: Align(
          alignment: Alignment.topLeft,
          child: Column(children: <Widget>[
            PlanCard(),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Strings.RECOMMEDNED,
                          style: TextStyle(
                              color: AppColors.COLOR_GREYISH_BROWN_THREE,
                              fontSize: 12,
                              fontWeight: (FontWeight.w600))),
                      Text(Strings.VIEWALL,
                          style: TextStyle(
                              color: AppColors.COLOR_LIGHTISH_BLUE,
                              fontSize: 12,
                              fontWeight: (FontWeight.w500))),
                    ])),
            RecommendedPlans(),
          ])),
    );
  }
}
