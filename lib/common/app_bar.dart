import 'package:flutter/material.dart';
import 'package:flutterproject/resources/images.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: new Image.asset(Images.MENU_ICON, height: 20, width: 20),
        onPressed: null,
      ),
      actions: <Widget>[
        IconButton(
          icon: new Image.asset(Images.BELL_ICON, height: 22, width: 22),
          onPressed: null,
        ),
        IconButton(
          icon: new Image.asset(Images.OVAL_ICON, height: 32, width: 32),
          onPressed: null,
        ),
      ],
    );
  }
}
