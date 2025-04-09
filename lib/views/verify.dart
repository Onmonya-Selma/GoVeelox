import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/create.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 76,
            ),
            const Text(
              'Verify account',
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
              'A 6-digit code has been sent to uc***8mail.com.\nEnter your code here to continue',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            InputText(
              text: 'Verification code',
            ),
            SizedBox(height: 10),
            InputField(
              text: '123456',
              icon: Icons.shopping_bag_outlined,
            ),
            SizedBox(
              height: 16,
            ),
            NextPageButton(
                press: () => Get.toNamed('/profilesetup'),
                text: 'Verify and continue'),
            SizedBox(
              height: 24,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Code resend in ',
                  style: TextStyle(color: Color(0XFF667185)),
                ),
                const TextSpan(
                    text: '54s', style: TextStyle(color: Color(0xFF89008B))),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
