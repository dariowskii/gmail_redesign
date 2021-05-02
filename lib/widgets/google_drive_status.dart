import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';

class GoogleDriveStatus extends StatelessWidget {
  const GoogleDriveStatus({
    Key key,
    @required this.percentageStatus,
    @required this.memoryAvailable,
    @required this.memoryUsed,
  })  : assert(percentageStatus != null),
        assert(memoryAvailable != null),
        assert(memoryUsed != null),
        assert(percentageStatus > 0 && percentageStatus <= 100),
        super(key: key);

  /// The `percentageStatus` of memory used.
  final int percentageStatus;

  /// The amount of `memoryAvailable` expressed in GigaBytes.
  final int memoryAvailable;

  /// The amount of `memoryUsed` expressed in GigaBytes.
  final int memoryUsed;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          return Stack(
            children: [
              Container(
                width: contraints.maxWidth,
                color: kSidebarBackgroundColor,
              ),
              Container(
                width: contraints.maxWidth * (percentageStatus / 100),
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GOOGLE DRIVE',
                          style: kFont10.copyWith(color: Colors.white),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: kGmailTitleColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$memoryUsed GB of $memoryAvailable GB used',
                          style: kFont10.copyWith(color: Colors.white),
                        ),
                        Text(
                          '$percentageStatus %',
                          style: kFont10.copyWith(color: kGmailTitleColor),
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
    );
  }
}
