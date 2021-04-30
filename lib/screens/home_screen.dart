import 'package:flutter/material.dart';
import 'package:gmail_redesign/widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.grey[100],
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SingleChildScrollView(child: Sidebar()),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        width: double.maxFinite,
                        color: Colors.blue,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
