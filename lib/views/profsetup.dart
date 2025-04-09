import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'create.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
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
              'Profile setup',
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
              'Fill in your details',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 24,
            ),
            InputText(text: 'Profile picture'),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'UD',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF101928)),
                    ),
                  ),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFC6DDF7),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 99,
                  height: 36,
                  child: Center(
                      child: Text(
                    'Edit picture',
                    style: TextStyle(
                      color: Color(0xFF101928),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFC6DDF7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),



            InputText(text: 'Full name'),
            SizedBox(
              height: 10,
            ),
            InputFieldd(text: 'Uche Doe'),
            SizedBox(
              height: 16,
            ),
            InputText(text: 'Email'),
            SizedBox(
              height: 10,
            ),
            InputFieldd(text: 'uchedoe@mail.com'),
            SizedBox(
              height: 16,
            ),
            InputText(text: 'Phone number'),
            SizedBox(
              height: 10,
            ),
            InputFieldd(text: '0800 000 0000'),
            SizedBox(
              height: 16,
            ),
            InputText(text: 'Location'),
            SizedBox(
              height: 10,
            ),
            InputFieldd(text: 'Kashim Ibrahim Way, Wuse , Abuja'),
            SizedBox(
              height: 24,
            ),
            NextPageButton(
              text: 'Complete and start ordering',
              press: () => Get.toNamed('/location'),
            ),
          ],
        ),
      ),
    );
  }
}


class InputFieldd extends StatelessWidget {
  const InputFieldd({
    required this.text,
    this.icon,
    this.color,
    super.key,
  });

  final String text;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(16),
      decoration: const BoxDecoration(),
      height: 56,
      width: 343,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
