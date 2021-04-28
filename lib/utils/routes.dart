import 'package:flutter/material.dart';
import 'package:gmail_redesign/screens/home_screen.dart';

const String initialRoute = HomeScreen.id;

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomeScreen.id: (context) => HomeScreen(),
};
