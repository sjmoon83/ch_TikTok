import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';

class NavTab extends StatelessWidget {
  final IconData icon;
  final IconData selectedicon;
  final bool isSelected;
  final Function onTap;

  const NavTab({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.selectedicon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0.4,
            duration: const Duration(
              milliseconds: 200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isSelected ? selectedicon : icon,
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
