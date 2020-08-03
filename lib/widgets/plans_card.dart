import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';
import 'package:flutterproject/themes/colors.dart';

class PlanCard extends StatefulWidget {
  @override
  PlanCardState createState() => PlanCardState();
}

class PlanCardState extends State<PlanCard> {
  int _currentIndex = 0;

  Color color;
  void initState() {
    super.initState();

    color = Colors.white;
  }

  final List<Map<String, dynamic>> plan = [
    {
      'dataBalanceText': "Load Balance",
      'remainingData': 'P 1675.00',
      'totalData': 'Valid till 26 Dec',
      'image': Image.asset(Images.PLAN_IMAGE)
    },
    {
      'dataBalanceText': "Data Balance",
      'remainingData': '500 MB',
      'totalData': 'of 6 GB',
      'image': Image.asset(Images.PLAN_IMAGE)
    },
    {
      'dataBalanceText': "Data Balance",
      'remainingData': '500 MB',
      'totalData': 'of 6 GB',
      'image': Image.asset(Images.PLAN_IMAGE)
    },
    {
      'dataBalanceText': "Data Balance",
      'remainingData': '500 MB',
      'totalData': 'of 6 GB',
      'image': Image.asset(Images.PLAN_IMAGE)
    },
    {
      'dataBalanceText': "Data Balance",
      'remainingData': '500 MB',
      'totalData': 'of 6 GB',
      'image': Image.asset(Images.PLAN_IMAGE)
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: plan.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => {
                        setState(() {
                          _currentIndex = index;
                        })
                      },
                  child: Container(
                      width: 160,
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: _currentIndex == index
                            ? AppColors.COLOR_WARM_BLUE
                            : AppColors.COLOR_WHITE,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(Images.PLAN_IMAGE)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 2),
                                  child: Text(
                                    plan[index]['dataBalanceText'],
                                    style: TextStyle(
                                        color: _currentIndex == index
                                            ? AppColors.COLOR_WHITE
                                            : AppColors.COLOR_DARK_GRAY,
                                        fontSize: 12,
                                        fontWeight: (FontWeight.w500)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Text(
                                    plan[index]['remainingData'],
                                    style: TextStyle(
                                        color: _currentIndex == index
                                            ? AppColors.COLOR_WHITE
                                            : AppColors.COLOR_BLACK,
                                        fontSize: 20,
                                        fontWeight: (FontWeight.w600)),
                                  ),
                                ),
                              ],
                            )),
                            Container(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  plan[index]['totalData'],
                                  style: TextStyle(
                                    color: _currentIndex == index
                                        ? AppColors.COLOR_WHITE
                                        : AppColors.COLOR_BLACK_TWO,
                                    fontSize: 12,
                                  ),
                                ))
                          ])));
            }));
  }
}
