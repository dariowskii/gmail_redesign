import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/widgets/soft_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              WebsafeSvg.asset('images/gmail.svg', width: 25),
              kSized10W,
              Text(
                'Gmail',
                style: kFont16.copyWith(color: Colors.grey[500]),
              ),
            ],
          ),
          kSized20H,
          const SoftButton(
            textButton: 'Compose',
          ),
        ],
      ),
    );
  }
}
