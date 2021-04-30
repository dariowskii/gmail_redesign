import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';

class FavoriteUser extends StatelessWidget {
  const FavoriteUser({
    Key key,
    @required this.fullName,
    @required this.category,
    @required this.isOnline,
    this.urlAvatarImg,
  })  : assert(fullName != null),
        assert(category != null),
        assert(isOnline != null),
        super(key: key);

  final bool isOnline;
  final String fullName;
  final String category;
  final String urlAvatarImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingH16,
      child: Container(
        margin: kPaddingB16,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      if (isOnline)
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        )
                      else
                        kSized5W,
                      kSized5W,
                      Text(fullName),
                    ],
                  ),
                  Row(
                    children: [
                      kSized10W,
                      Text(
                        category,
                        style: const TextStyle(
                            fontSize: 10, color: kGmailTitleColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (urlAvatarImg == null)
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: kBlueNotificationColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Center(
                  child: Text(
                    fullName.substring(0, 1),
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
