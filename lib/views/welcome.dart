import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/create.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
              'Welcome back',
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
              'Love having you around',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            InputText(
              text: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              text: 'abc@mail.com',
            ),
            SizedBox(
              height: 16,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot password?'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            NextPageButton(text: 'Login'),
            SizedBox(
              height: 24,
            ),
            Center(
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Color(0XFF667185)),
                      children: [
                    TextSpan(text: 'Don\'t have an account?'),
                    TextSpan(
                        text: 'Create one',
                        style: TextStyle(color: Color(0xFF89008B))),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
