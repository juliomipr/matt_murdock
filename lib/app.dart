import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ui/home/home_page.dart';
import 'web_lib/home/home_landing.dart';

class MattMurdock extends StatelessWidget {
  const MattMurdock({
    Key? key,
    required this.title,
    required this.appBarTitle,
    required this.color,
  }) : super(key: key);
  final String title;
  final String appBarTitle;
  final MaterialColor color;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: color,
      ),
      home:  kIsWeb ? const Landing() : MyHomePage(title: appBarTitle),
    );
  }
}

