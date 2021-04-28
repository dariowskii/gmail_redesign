import 'package:flutter/material.dart';
import 'package:gmail_redesign/widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Expanded(
            child: Sidebar(),
          ),
          // Mail list
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
              child: Column(),
            ),
          ),
          // Mail view
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.orange,
              child: Column(),
            ),
          ),
        ],
      ),
    );
  }
}
