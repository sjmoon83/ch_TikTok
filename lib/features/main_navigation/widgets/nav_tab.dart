import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';

class NavTab extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const NavTab({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0.6,
            duration: const Duration(
              milliseconds: 200,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: Sizes.size32,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
