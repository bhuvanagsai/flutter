import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';
import 'package:flutterproject/themes/colors.dart';

class VoucherCard extends StatelessWidget {
  final List<Map<String, dynamic>> voucherDetails = [
    {
      'image': Images.VOUCHER1_IMAGE,
      'points': 1000,
      'Vouchername': 'P 500 OFF on Shoes',
      'icon': Images.BRAND
    },
    {
      'image': Images.VOUCHER12_IMAGE,
      'points': 1000,
      'Vouchername': 'Get Hair Spa & Styling.',
      'icon': Images.BRAND1
    },
    {
      'image': Images.VOUCHER1_IMAGE,
      'points': 1000,
      'Vouchername': 'P 500 OFF on Shoes',
      'icon': Images.BRAND
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: voucherDetails.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        image: AssetImage(voucherDetails[index]['image']),
                        fit: BoxFit.cover),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 15, 0, 20),
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Image.asset(voucherDetails[index]['icon'])),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '${voucherDetails[index]['points']}',
                              style: TextStyle(
                                  color: AppColors.COLOR_WHITE,
                                  fontSize: 16,
                                  fontWeight: (FontWeight.w700),
                                  letterSpacing: -0.69)),
                          TextSpan(
                              text: " Pts",
                              style: TextStyle(
                                  color: AppColors.COLOR_WHITE,
                                  fontSize: 14,
                                  fontWeight: (FontWeight.w500),
                                  letterSpacing: 0)),
                        ])),
                        Container(
                            width: 85,
                            padding: EdgeInsets.only(top: 25),
                            child: Text(
                                '${voucherDetails[index]['Vouchername']}',
                                style: TextStyle(
                                    color: AppColors.COLOR_WHITE,
                                    fontSize: 15,
                                    fontWeight: (FontWeight.w500),
                                    letterSpacing: -0.69)))
                      ])));
            }));
  }
}
