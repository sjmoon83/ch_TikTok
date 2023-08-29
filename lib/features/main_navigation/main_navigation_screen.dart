import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:chtiktok/features/main_navigation/widgets/nav_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size20, horizontal: Sizes.size28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavTab(
                icon: FontAwesomeIcons.house,
                isSelected: _selectedIndex == 0,
                onTap: () => _onTap(0),
              ),
              Gaps.v5,
              NavTab(
                icon: FontAwesomeIcons.magnifyingGlass,
                isSelected: _selectedIndex == 1,
                onTap: () => _onTap(1),
              ),
              Gaps.v5,
              NavTab(
                icon: FontAwesomeIcons.pen,
                isSelected: _selectedIndex == 2,
                onTap: () => _onTap(2),
              ),
              Gaps.v5,
              NavTab(
                icon: FontAwesomeIcons.heart,
                isSelected: _selectedIndex == 3,
                onTap: () => _onTap(3),
              ),
              Gaps.v5,
              NavTab(
                icon: FontAwesomeIcons.user,
                isSelected: _selectedIndex == 4,
                onTap: () => _onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
