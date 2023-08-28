import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final double width;

  const NextButton({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: width,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size10,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Next',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
