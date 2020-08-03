import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/find_out_Button.dart';
import 'package:flutterproject/themes/themes.dart';
import 'package:flutterproject/widgets/GlobeRewards/globe_reward.dart';
import 'package:flutterproject/widgets/my_plans.dart';
import 'package:flutterproject/widgets/Subscriptions/my_subscriptions.dart';
import 'package:flutterproject/widgets/MyPlans/plans.dart';
import 'package:flutterproject/widgets/RoamingPlans/roaming_plans.dart';
import 'package:flutterproject/widgets/SpecialPromos/special_promos.dart';
import 'package:flutterproject/widgets/LatestPromo/latest_promos.dart';
import 'package:flutterproject/widgets/Vouchers/vouchers.dart';

import './common/app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: HomePage(),
      theme: Themes.lightTheme,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          MyPlans(),
          Plans(),
          SpecialPromos(),
          LatestPromo(),
          RoamingPlans(),
          GlobeRewards(),
          Vouchers(),
          FindOutButton(),
          MySubcriptions()
        ]));
  }
}
