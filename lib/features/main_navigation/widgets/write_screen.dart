import 'package:chtiktok/constants/sizes.dart';
import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  void _cancelTap() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New thread'),
        leadingWidth: 100.0,
        centerTitle: true,
        leading: TextButton(
          onPressed: _cancelTap,
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.black,
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
