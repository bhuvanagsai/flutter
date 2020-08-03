import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';
import 'package:flutterproject/themes/colors.dart';

class PromoCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  PromoCard(this.text1, this.text2, this.text3, this.text4);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
              image: AssetImage(Images.PROMO_CARD), fit: BoxFit.cover),
        ),
        margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
        child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
                    child: Text(
                      text1,
                      style: TextStyle(
                          color: AppColors.COLOR_WHITE,
                          fontSize: 12,
                          fontWeight: (FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 1),
                    child: Text(
                      text2,
                      style: TextStyle(
                          color: AppColors.COLOR_WHITE,
                          fontSize: 20,
                          fontWeight: (FontWeight.w600)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                    child: Text(
                      text3,
                      style: TextStyle(
                        color: AppColors.COLOR_WHITE,
                        letterSpacing: 1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 54,
                      padding: EdgeInsets.fromLTRB(20, 17, 0, 0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.1)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(text4,
                                style: TextStyle(
                                  color: AppColors.COLOR_WHITE,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        )
                      ]))
                ])));
  }
}
