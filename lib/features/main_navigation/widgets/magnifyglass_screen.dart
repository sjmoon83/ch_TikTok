import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';

class MagnicyGlassScreen extends StatelessWidget {
  const MagnicyGlassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/3612017?v=4'),
            ),
            Gaps.h20,
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'nico',
                ),
                Text(
                  'Nicolas Serrano',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Gaps.h80,
            Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.grey,
                ),
              ),
              child: const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
              ),
            ),
          ],
        ),
        Gaps.v10,
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size64,
          ),
          child: Text('999,999K followers'),
        ),
      ],
    );
  }
}
