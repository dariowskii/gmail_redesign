import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/utils/data.dart';
import 'package:gmail_redesign/widgets/favorite_contact_button.dart';
import 'package:gmail_redesign/widgets/favorite_user.dart';
import 'package:gmail_redesign/widgets/sidebar_element.dart';
import 'package:gmail_redesign/widgets/soft_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingT16,
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
          kSized20H,
          Column(
            children: [
              const Divider(
                height: 3,
              ),
              kSized10H,
              const FavoriteContactsButton(),
              kSized10H,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 70),
                shrinkWrap: true,
                itemCount: avatars.length,
                itemBuilder: (context, index) {
                  return FavoriteUser(
                    fullName: avatars[index]['name'] as String,
                    category: avatars[index]['category'] as String,
                    urlAvatarImg: avatars[index]['urlAvatarImg'] as String,
                    isOnline: avatars[index]['isOnline'] as bool,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
