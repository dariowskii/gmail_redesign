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
    return Scrollbar(
      thickness: 3,
      child: SingleChildScrollView(
        child: Container(
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
              const SidebarElement(text: 'Starred'),
              const SidebarElement(text: 'Snoozed'),
              const SidebarElement(text: 'Sent'),
              const SidebarElement(text: 'Draft'),
              const SidebarElement(
                text: 'Spam',
                hasNotification: true,
                numNotification: 12,
              ),
              kSized20H,
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
                itemCount: favoriteAvatars.length,
                itemBuilder: (context, index) {
                  return FavoriteUser(
                    fullName: favoriteAvatars[index]['name'] as String,
                    category: favoriteAvatars[index]['category'] as String,
                    urlAvatarImg:
                        favoriteAvatars[index]['urlAvatarImg'] as String,
                    isOnline: favoriteAvatars[index]['isOnline'] as bool,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
