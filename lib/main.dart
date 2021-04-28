import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Redesign',
      theme: kAppTheme,
      initialRoute: initialRoute,
      routes: appRoutes,
    );
  }
}
