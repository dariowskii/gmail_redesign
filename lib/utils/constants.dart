import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App Theme
ThemeData kAppTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: GoogleFonts.latoTextTheme().apply(displayColor: Colors.black54),
);

// Text Styles
const TextStyle kFont14Bold =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
const TextStyle kFont16 = TextStyle(fontSize: 16);
const TextStyle kFont16Bold =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle kTitleStyle =
    TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

// Widgets

const SizedBox kSized10H = SizedBox(height: 10);
const SizedBox kSized15H = SizedBox(height: 15);
const SizedBox kSized20H = SizedBox(height: 20);
const SizedBox kSized30H = SizedBox(height: 30);
const SizedBox kSized40H = SizedBox(height: 40);
const SizedBox kSized10W = SizedBox(width: 10);
const SizedBox kSized15W = SizedBox(width: 15);
const SizedBox kSized20W = SizedBox(width: 20);
const SizedBox kSized30W = SizedBox(width: 30);
const SizedBox kSized40W = SizedBox(width: 40);
