import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/verify.dart';

//import 'package:flutter/widgets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 76,
            ),
            Text(
              'Create account',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Glad to have you, we have been waiting for you',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyMedium,
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
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 5,
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Color(0XFF667185)),
                        children: [
                      TextSpan(text: 'By clicking, I agree to the '),
                      TextSpan(
                          text: 'Terms ',
                          style: TextStyle(color: Color(0xFF89008B))),
                      TextSpan(text: 'and '),
                      TextSpan(
                          text: 'Privacy \n Policy ',
                          style: TextStyle(color: Color(0xFF89008B))),
                      TextSpan(text: 'of GoVeelox'),
                    ]))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            NextPageButton(
                text: 'Create account', press: () => Get.toNamed('/verify')),
            SizedBox(
              height: 24,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                    text: 'Login', style: TextStyle(color: Color(0xFF89008B))),
              ])),
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    required this.text,
    this.icon,
    super.key,
  });

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 56,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodySmall,

          suffixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
