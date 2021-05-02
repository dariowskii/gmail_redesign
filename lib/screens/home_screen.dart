import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
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
            Scrollbar(
              thickness: 5,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 200,
                  maxHeight: double.maxFinite,
                ),
                child: Container(
                  color: Colors.grey[100],
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned.fill(
                          child: SingleChildScrollView(child: Sidebar())),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 70,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 0.3,
                                color: kGmailTitleColor,
                              ),
                            ),
                          ),
                          child: LayoutBuilder(
                            builder: (context, contraints) {
                              const percentage = 0.72;
                              return Stack(
                                children: [
                                  Container(
                                    width: contraints.maxWidth,
                                    color: Colors.grey[100],
                                  ),
                                  Container(
                                    width: contraints.maxWidth * percentage,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 16,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'GOOGLE DRIVE',
                                              style: kFont10.copyWith(
                                                  color: Colors.white),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15,
                                              color: kGmailTitleColor,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '17 GB of 20 GB used',
                                              style: kFont10.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              '${percentage * 100}%',
                                              style: kFont10.copyWith(
                                                color: kGmailTitleColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
