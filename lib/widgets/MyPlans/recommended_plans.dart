import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';

class RecommendedPlans extends StatelessWidget {
  final List<Map<String, dynamic>> recommendedplans = [
    {
      'planName': "GoUNLI350",
      'validity': '30 days UNLI to Globe',
    },
    {
      'planName': "GoUNLI180",
      'validity': '15 days UNLI to Globe',
    },
    {
      'planName': "GoUNLI180",
      'validity': '15 days UNLI to Globe',
    },
    {
      'planName': "GoUNLI180",
      'validity': '15 days UNLI to Globe',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendedplans.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: AppColors.COLOR_WARM_BLUE,
                  margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                  child: Container(
                      width: 158,
                      padding: EdgeInsets.fromLTRB(12, 16, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                recommendedplans[index]['planName'],
                                style: TextStyle(
                                    color: AppColors.COLOR_WHITE,
                                    fontSize: 12,
                                    fontWeight: (FontWeight.w500)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                recommendedplans[index]['validity'],
                                style: TextStyle(
                                    color: AppColors.COLOR_WHITE,
                                    fontSize: 12,
                                    fontWeight: (FontWeight.w700)),
                              ),
                            ),
                          ])));
            }));
  }
}
