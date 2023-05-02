import 'package:calculate_si/view/ar_view.dart';
import 'package:calculate_si/view/calc_BMI_view.dart';
import 'package:calculate_si/view/revString_view.dart';
import 'package:calculate_si/view/secHighest_view.dart';
import 'package:flutter/material.dart';

import 'view/circle_view.dart';
import 'view/column_view.dart';
import 'view/dash_borad.dart';
import 'view/name_view.dart';
import 'view/responsive_design.dart';
import 'view/rich_text_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //hides the debug banner
        initialRoute: '/',
        routes: {
          '/': (context) => const dashBoard(),
          '/arRoute': (context) => const arView(),
          '/siRoute': (context) => const responsiveDesign(),
          '/circleRoute': (context) => const circleView(),
          '/nameRoute': (context) => const nameView(),
          '/textRoute': (context) => const richTextView(),
          '/columnRoute': (context) => const columnView(),
          '/bmiRoute': (context) => const calcBMI(),
          '/revRoute': (context) => const revString(),
          '/secHighRoute': (context) => const secHigh(),
        },);
  }
}
