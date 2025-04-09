import 'package:flutter/material.dart';
import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/create.dart';

class ConfirmPasswordPage extends StatefulWidget {
  const ConfirmPasswordPage({super.key});

  @override
  State<ConfirmPasswordPage> createState() => _ConfirmPasswordPageState();
}

class _ConfirmPasswordPageState extends State<ConfirmPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 76,
            ),
            const Text(
              'Reset Password',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF101928)),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'You can enter your desired new password in the\ninput field below.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            InputText(
              text: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              text: 'Password',
              icon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(
              height: 16,
            ),
            InputText(
              text: 'Confirm Password',
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              text: 'Password',
              icon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(
              height: 24,
            ),
            NextPageButton(text: 'Complete'),
          ],
        ),
      ),
    );
  }
}
