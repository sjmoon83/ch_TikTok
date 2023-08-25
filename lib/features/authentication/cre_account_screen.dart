import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:chtiktok/features/authentication/experience.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreAccountScreen extends StatefulWidget {
  const CreAccountScreen({super.key});

  @override
  State<CreAccountScreen> createState() => _CreAccountScreenState();
}

class _CreAccountScreenState extends State<CreAccountScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _cancelTap() {
    Navigator.of(context).pop();
  }

  void _bottomNextTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExperienceScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Theme.of(context).primaryColor,
          size: Sizes.size28,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v28,
            const Text(
              "Create your account",
              style: TextStyle(
                  fontSize: Sizes.size28 + Sizes.size2,
                  fontWeight: FontWeight.w900),
            ),
            Gaps.v28,
            Form(
              key: _formKey,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Name',
                      ),
                      validator: (value) {
                        return 'I dont know your name';
                      },
                    ),
                    Gaps.v16,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Phone number or email address',
                      ),
                      validator: (value) {
                        return 'I dont know your Email';
                      },
                    ),
                    Gaps.v16,
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Date of birth',
                      ),
                      validator: (value) {
                        return 'Wrong password';
                      },
                    ),
                    Gaps.v96,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade200,
                            ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
