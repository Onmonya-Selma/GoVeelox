import 'package:flutter/material.dart';
import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/create.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 76,
            ),
            const Text(
              'Reset password',
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
              'A 6-digit code has been sent to ab***mail.com.\nEnter your code here to reset password.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 24,
            ),
            InputText(text: 'Verification code'),
            SizedBox(
              height: 16,
            ),
            InputField(
              text: '123456',
              icon: Icons.shopping_bag_outlined,
            ),
            SizedBox(
              height: 24,
            ),
            NextPageButton(text: 'Verify and Continue'),
            SizedBox(
              height: 24,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(color: Color(0XFF667185)),
                    children: [
                  TextSpan(text: 'Code resends in '),
                  TextSpan(
                      text: '54s', style: TextStyle(color: Color(0xFF89008B))),
                ])),
          ],
        ),
      ),
    );
  }
}
