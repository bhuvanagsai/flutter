import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/resources/images.dart';

class AlsoLike extends StatelessWidget {
  final List<Map<String, dynamic>> subscrptionDetails = [
    {
      'cardColor': [AppColors.COLOR_GRAPE_PRUPLE, AppColors.COLOR_GRAPE_PRUPLE],
      'image': Images.HQ_IMAGE1,
      'amount': 'P 129.00',
      'subscibeText': 'Subscribe for',
      'validity': '/m'
    },
    {
      'cardColor': [AppColors.COLOR_RED_BROWN, AppColors.COLOR_RED_BROWN_TWO],
      'image': Images.IFLIX_IMAGE,
      'amount': 'P 129.00',
      'subscibeText': 'Get pack for',
      'validity': '/m'
    },
    {
      'cardColor': [AppColors.COLOR_OCEAN_BLUE, AppColors.COLOR_BLUE],
      'image': Images.IFLIX_IMAGE,
      'amount': 'P 129.00',
      'subscibeText': 'Subscribe for',
      'validity': '/m'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('You might also like',
                style: TextStyle(
                    color: AppColors.COLOR_WHITE,
                    fontSize: 14,
                    fontWeight: (FontWeight.w600),
                    letterSpacing: 0.16)),
            Container(
                height: 170,
                margin: EdgeInsets.only(top: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: subscrptionDetails.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              gradient: LinearGradient(
                                  colors: subscrptionDetails[index]
                                      ['cardColor'],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Image.asset(
                                        subscrptionDetails[index]['image'])),
                                Container(
                                    width: double.infinity,
                                    height: 68,
                                    margin: EdgeInsets.only(top: 28),
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.black.withOpacity(0.5),
                                            Colors.black.withOpacity(0.1)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                                subscrptionDetails[index]
                                                    ['subscibeText'],
                                                style: TextStyle(
                                                  color: AppColors.COLOR_WHITE,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                          Container(
                                              child: RichText(
                                                  text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    '${subscrptionDetails[index]['amount']}',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.COLOR_WHITE,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        (FontWeight.w700),
                                                    height: 1,
                                                    letterSpacing: -0.5)),
                                            TextSpan(
                                                text:
                                                    '  ${subscrptionDetails[index]['validity']}',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.COLOR_WHITE,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        (FontWeight.w400),
                                                    letterSpacing: -0.5)),
                                          ])))
                                        ]))
                              ]));
                    }))
          ],
        ));
  }
}
