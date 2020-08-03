import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';

import 'package:flutterproject/themes/colors.dart';
import 'package:flutterproject/common/gradient.dart';
import 'package:flutterproject/widgets/also_like.dart';
import 'package:flutterproject/widgets/medias.dart';

class MySubcriptions extends StatelessWidget {
  final List<Map<String, dynamic>> netFlixImage = [
    {
      'image': Images.MOVIE_IMAGE,
    },
    {
      'image': Images.MOVIE_IMAGE1,
    },
    {
      'image': Images.MOVIE_IMAGE,
    },
  ];
  // var netFliximage = new Image.asset(Images.NETFLIX_IMAGE);
  // var amazonImage = new Image.asset(Images.PRIME_IMAGE);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 900,
        margin: EdgeInsets.only(top: 36),
        padding: EdgeInsets.fromLTRB(24, 40, 0, 0),
        decoration: new BoxDecoration(
          color: AppColors.COLOR_BLACK,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('My Subscriptions',
                  style: TextStyle(
                      color: AppColors.COLOR_WHITE.withOpacity(0.35),
                      fontSize: 14,
                      fontWeight: (FontWeight.w600),
                      letterSpacing: 0.16)),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: GradientText(
                      text:
                          'With remaining 12GB,\nyou can watch 640 min of video',
                      colors: [
                        AppColors.COLOR_CORNFLOWER,
                        AppColors.COLOR_PALE_SALMON
                      ])),
              Media(
                text: "Popular on ",
                image: netFlixImage,
                mediaImage: Images.NETFLIX_IMAGE,
              ),
              Media(
                  text: "Latest on ",
                  image: netFlixImage,
                  mediaImage: Images.PRIME_IMAGE),
              AlsoLike()
            ]));
  }
}
