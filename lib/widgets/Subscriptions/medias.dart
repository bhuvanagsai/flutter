import 'package:flutter/material.dart';
import 'package:flutterproject/themes/colors.dart';

class Media extends StatelessWidget {
  final String text;
  final List<Map<String, dynamic>> image;
  final String mediaImage;

  Media({@required this.text, @required this.image, @required this.mediaImage});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 30, 20, 0),
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(text,
                            style: TextStyle(
                              color: AppColors.COLOR_WHITE,
                              fontSize: 14,
                              fontWeight: (FontWeight.w600),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.asset(mediaImage))
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
            Container(
                height: 168,
                margin: EdgeInsets.only(top: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                                image: AssetImage(image[index]['image']),
                                fit: BoxFit.cover),
                          ));
                    }))
          ],
        ));
  }
}
