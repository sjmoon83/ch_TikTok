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

  final screens = [
    ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/3612017?v=4'),
                ),
                Gaps.h10,
                Container(
                  color: Colors.lightBlue,
                  width: 320,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('data'),
                          Row(
                            children: [
                              Text('2m'),
                              Gaps.h5,
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text('data'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.gripLinesVertical,
                  size: Sizes.size48,
                ),
                SizedBox(
                  width: 250,
                  child: Image.network(
                    'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
                  ),
                ),
              ],
            ),
            Image.network(
              'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
            ),
            Image.network(
              'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
            ),
            Image.network(
              'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
            ),
            Image.network(
              'https://i.namu.wiki/i/oU0avPQmlPv0p13BPnuEqyzmtGl9SoTArdKVYpb1r5CYXrpUjEqtiurvlFDjpXdOMyDXwIFYpz0x3PgtS92_8A.webp',
            ),
          ],
        ),
      ],
    ),
    const Center(
      child: Text(
        'MagnifyingGlass',
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Square',
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Heart',
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
    const Center(
      child: Text(
        'User',
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              icon: FontAwesomeIcons.house,
              selectedicon: FontAwesomeIcons.houseUser,
              isSelected: _selectedIndex == 0,
              onTap: () => _onTap(0),
            ),
            Gaps.v8,
            NavTab(
              icon: FontAwesomeIcons.magnifyingGlass,
              selectedicon: FontAwesomeIcons.magnifyingGlassPlus,
              isSelected: _selectedIndex == 1,
              onTap: () => _onTap(1),
            ),
            Gaps.v8,
            NavTab(
              icon: FontAwesomeIcons.squarePen,
              selectedicon: FontAwesomeIcons.pen,
              isSelected: _selectedIndex == 2,
              onTap: () => _onTap(2),
            ),
            Gaps.v8,
            NavTab(
              icon: FontAwesomeIcons.heart,
              selectedicon: FontAwesomeIcons.solidHeart,
              isSelected: _selectedIndex == 3,
              onTap: () => _onTap(3),
            ),
            Gaps.v8,
            NavTab(
              icon: FontAwesomeIcons.user,
              selectedicon: FontAwesomeIcons.solidUser,
              isSelected: _selectedIndex == 4,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
