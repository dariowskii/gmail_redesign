import 'package:flutter/material.dart';
import 'package:gmail_redesign/utils/constants.dart';
import 'package:gmail_redesign/widgets/soft_button.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              kSized10W,
              Text(
                'Gmail',
                style: kFont16Bold.copyWith(color: Colors.grey[800]),
              ),
            ],
          ),
          kSized20H,
          const SoftButton(
            textButton: 'Compose',
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
