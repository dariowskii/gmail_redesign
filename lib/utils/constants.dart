import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App Theme
ThemeData kAppTheme = ThemeData(
  textTheme: GoogleFonts.latoTextTheme().apply(displayColor: Colors.black54),
);

// Colors

const Color kGmailTitleColor = Color(0xFF9E9E9E);
const Color kBlueNotificationColor = Colors.blue;
const Color kSidebarBackgroundColor = Color(0xFFF5F5F5);

// Text Styles
const TextStyle kFont10 = TextStyle(fontSize: 10);
const TextStyle kFont14 = TextStyle(fontSize: 14);
const TextStyle kFont14Bold =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
const TextStyle kFont16 = TextStyle(fontSize: 16);
const TextStyle kFont16Bold =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle kTitleStyle =
    TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

// Widgets

const SizedBox kSized5H = SizedBox(height: 5);
const SizedBox kSized10H = SizedBox(height: 10);
const SizedBox kSized15H = SizedBox(height: 15);
const SizedBox kSized20H = SizedBox(height: 20);
const SizedBox kSized30H = SizedBox(height: 30);
const SizedBox kSized40H = SizedBox(height: 40);
const SizedBox kSized5W = SizedBox(width: 5);
const SizedBox kSized10W = SizedBox(width: 10);
const SizedBox kSized15W = SizedBox(width: 15);
const SizedBox kSized20W = SizedBox(width: 20);
const SizedBox kSized30W = SizedBox(width: 30);
const SizedBox kSized40W = SizedBox(width: 40);

const EdgeInsetsGeometry kPaddingH8 = EdgeInsets.symmetric(horizontal: 8.0);
const EdgeInsetsGeometry kPaddingH16 = EdgeInsets.symmetric(horizontal: 16.0);
const EdgeInsetsGeometry kPaddingV16 = EdgeInsets.symmetric(vertical: 16.0);
const EdgeInsetsGeometry kPaddingL16 = EdgeInsets.only(left: 16.0);
const EdgeInsetsGeometry kPaddingT16 = EdgeInsets.only(top: 16.0);
const EdgeInsetsGeometry kPaddingB16 = EdgeInsets.only(bottom: 16.0);
const EdgeInsetsGeometry kPadding8 = EdgeInsets.all(8);
const EdgeInsetsGeometry kPadding16 = EdgeInsets.all(16);
const EdgeInsetsGeometry kPadding32 = EdgeInsets.all(32);
