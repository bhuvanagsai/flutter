import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';
import 'package:flutterproject/themes/colors.dart';

class LatestPromoCard extends StatelessWidget {
  final List<Map<String, dynamic>> latestPromoDetails = [
    {
      'cardImage': Images.LATEST_PROMOCARD_IMAGE,
      'image': Images.SPOTIFY_ICON,
      'planName': "Spotify",
      'Premium': 'Premium',
      'amount': 'P 129.00',
      'subscibeText': 'Subscribe for',
      'validity': '/m'
    },
    {
      'cardImage': Images.LATEST_PROMOCARD1_IMAGE,
      'image': Images.INSTAGRAM_ICON,
      'planName': "Facebook",
      'Premium': 'Surf',
      'amount': 'P 50.00',
      'subscibeText': 'Get pack for',
      'validity': '/m'
    },
    {
      'cardImage': Images.LATEST_PROMOCARD_IMAGE,
      'image': Images.INSTAGRAM_ICON,
      'planName': "Instagram",
      'Premium': 'Surf',
      'amount': 'P 129.00',
      'subscibeText': 'Subscribe for',
      'validity': '/m'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 168,
        margin: EdgeInsets.only(top: 12),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: latestPromoDetails.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        image:
                            AssetImage(latestPromoDetails[index]['cardImage']),
                        fit: BoxFit.cover),
                  ),
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            height: 35,
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 18),
                            child: Image.asset(
                                latestPromoDetails[index]['image'])),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text:
                                      '${latestPromoDetails[index]['planName']}',
                                  style: TextStyle(
                                      color: AppColors.COLOR_WHITE,
                                      fontSize: 14,
                                      fontWeight: (FontWeight.w700),
                                      letterSpacing: -0.5)),
                              TextSpan(
                                  text:
                                      '  ${latestPromoDetails[index]['Premium']}',
                                  style: TextStyle(
                                      color: AppColors.COLOR_WHITE,
                                      fontSize: 14,
                                      fontWeight: (FontWeight.w400),
                                      letterSpacing: -0.5)),
                            ]))),
                        Container(
                            width: double.infinity,
                            height: 68,
                            margin: EdgeInsets.only(top: 28),
                            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.black.withOpacity(0.1)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                        latestPromoDetails[index]
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
                                            '${latestPromoDetails[index]['amount']}',
                                        style: TextStyle(
                                            color: AppColors.COLOR_WHITE,
                                            fontSize: 14,
                                            fontWeight: (FontWeight.w700),
                                            height: 1,
                                            letterSpacing: -0.5)),
                                    TextSpan(
                                        text:
                                            '  ${latestPromoDetails[index]['validity']}',
                                        style: TextStyle(
                                            color: AppColors.COLOR_WHITE,
                                            fontSize: 14,
                                            fontWeight: (FontWeight.w400),
                                            letterSpacing: -0.5)),
                                  ])))
                                ]))
                      ]));
            }));
  }
}
