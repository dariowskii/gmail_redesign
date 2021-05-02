import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/widgets/google_drive_status.dart';
import 'package:gmail_redesign/widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Row(
          children: [
            // Sidebar
            Container(
              width: 200,
              color: kSidebarBackgroundColor,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned.fill(
                    child: Sidebar(),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: GoogleDriveStatus(
                      percentageStatus: 72,
                      memoryAvailable: 20,
                      memoryUsed: 17,
                    ),
                  ),
                ],
              ),
            ),
            // Mail list
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.orangeAccent,
                child: Column(),
              ),
            ),
            // Mail view
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.orange,
                child: Column(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
