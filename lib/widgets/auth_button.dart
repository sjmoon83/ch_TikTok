import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Color tcolor;
  final Color bcolor;
  final FaIcon? icon;

  const AuthButton({
    super.key,
    required this.text,
    required this.bcolor,
    required this.tcolor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size10,
        ),
        decoration: BoxDecoration(
          color: bcolor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade200,
            width: Sizes.size2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            Gaps.h10,
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: tcolor,
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
