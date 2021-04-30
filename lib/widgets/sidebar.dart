import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/widgets/sidebar_element.dart';
import 'package:gmail_redesign/widgets/soft_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: kPaddingV16,
      child: Column(
        children: [
          Padding(
            padding: kPaddingH16,
            child: Row(
              children: [
                WebsafeSvg.asset('images/gmail.svg', width: 25),
                kSized10W,
                Text(
                  'Gmail',
                  style: kFont16.copyWith(color: kGmailTitleColor),
                ),
              ],
            ),
          ),
          kSized20H,
          const Padding(
            padding: kPaddingH16,
            child: SoftButton(
              textButton: 'Compose',
            ),
          ),
          kSized15H,
          const SidebarElement(
            text: 'Inbox',
            hasNotification: true,
            numNotification: 4,
            isActive: true,
          ),
          const SidebarElement(text: 'Starred', hasNotification: false),
          const SidebarElement(text: 'Snoozed', hasNotification: false),
          const SidebarElement(text: 'Sent', hasNotification: false),
          const SidebarElement(text: 'Draft', hasNotification: false),
          const SidebarElement(
            text: 'Spam',
            hasNotification: true,
            numNotification: 12,
          ),
        ],
      ),
    );
  }
}
