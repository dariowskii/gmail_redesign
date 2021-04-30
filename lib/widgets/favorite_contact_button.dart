import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';

class FavoriteContactsButton extends StatelessWidget {
  const FavoriteContactsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingH16,
      child: MaterialButton(
        onPressed: () {},
        padding: kPadding16,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'FAVORITES CONTACTS',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
