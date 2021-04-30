import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';

class SidebarElement extends StatelessWidget {
  const SidebarElement({
    Key key,
    @required this.text,
    @required this.hasNotification,
    this.numNotification,
    this.isActive = false,
  })  : assert(text != null),
        assert(hasNotification != null),
        assert((hasNotification == true && numNotification > 0) ||
            numNotification == null),
        super(key: key);

  final bool isActive;
  final bool hasNotification;
  final int numNotification;
  final String text;

  static const double borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingL16,
      child: MaterialButton(
        elevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        focusColor: Colors.white,
        color: isActive ? Colors.white : null,
        padding: const EdgeInsets.all(18),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: isActive
                  ? kFont14Bold
                  : const TextStyle(fontSize: 14, color: kGmailTitleColor),
            ),
            if (hasNotification != null && hasNotification)
              Container(
                width: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: isActive ? kBlueNotificationColor : kGmailTitleColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Center(
                    child: Text(
                      numNotification.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
