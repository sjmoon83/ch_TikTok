import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:chtiktok/features/authentication/experience.dart';
import 'package:chtiktok/features/authentication/widgets/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreAccountScreen extends StatefulWidget {
  const CreAccountScreen({super.key});

  @override
  State<CreAccountScreen> createState() => _CreAccountScreenState();
}

class _CreAccountScreenState extends State<CreAccountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();

  String _name = "";

  DateTime initialDate = DateTime.now();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _checkName(value) {
    if (value.isEmpty) {
      return 'This field is required';
    }
    return '';
  }

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

  void _onSubmitTap() {
    _formKey.currentState?.validate();
  }

  @override
  void initState() {
    super.initState();
    _setTextFieldDate(initialDate);
    setState(() {
      _nameController.addListener(() {
        _name = _nameController.text;
      });
    });
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _setTextFieldDate(DateTime date) {
    final textDate = date.toString().split(" ").first;
    _birthdayController.value = TextEditingValue(text: textDate);
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
      body: SingleChildScrollView(
        child: Padding(
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
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          suffixIcon: Icon(Icons.check_circle_outline,
                              color: _name.isEmpty
                                  ? Colors.grey.shade400
                                  : Colors.greenAccent),
                        ),
                        validator: _checkName,
                      ),
                      Gaps.v16,
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Phone number or email address',
                          suffixIcon: Icon(
                            Icons.check_circle_outline,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // 이메일 주소 형식을 검증하는 정규 표현식
                          bool isValidEmail = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);

                          // 휴대폰 번호 형식을 검증하는 정규 표현식
                          bool isValidPhoneNumber =
                              RegExp(r'^\d{10,15}$').hasMatch(value);

                          if (!isValidEmail && !isValidPhoneNumber) {
                            return 'Please enter a valid email address or phone number';
                          }

                          return null;
                        },
                      ),
                      Gaps.v16,
                      TextFormField(
                        controller: _birthdayController,
                        enabled: false,
                        decoration: const InputDecoration(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return null;
                        },
                      ),
                      Gaps.v96,
                      GestureDetector(
                        onTap: _onSubmitTap,
                        child: const NextButton(
                          width: 0.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 250,
        child: CupertinoDatePicker(
          maximumDate: initialDate,
          initialDateTime: initialDate,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: _setTextFieldDate,
        ),
      ),
    );
  }
}
