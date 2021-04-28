import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';

class SoftButton extends StatelessWidget {
  const SoftButton({
    Key key,
    @required this.textButton,
    this.borderRadius = 10,
    this.color = Colors.white,
    this.textColor = const Color(0xFF424242),
    this.icon,
  })  : assert(textButton != null),
        assert(borderRadius != null),
        assert(color != null),
        super(key: key);

  final double borderRadius;
  final Color color, textColor;
  final Icon icon;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: color,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon,
              kSized10W,
            ],
            Text(
              textButton,
              style: kFont14Bold.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
