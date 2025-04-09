import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goveelox/views/create.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 76,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                'GoVeelox',
                style: TextStyle(
                  color: Color(0xFF89008B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 380,
            ),
            Padding(
              padding: EdgeInsets.only(right: 2),
              child: Text(
                'Swift, Secure &\nSeamless Deliveries🚀',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Get your packages where they need to be--fast,\nsafe,and hassle-free. Book a ride and track your\ndelivery in real-time!🎁✨',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
                ),
            const SizedBox(
              height: 90,
            ),
            NextPageButton(
              text: 'Get started',
              press: () => Get.to(CreateAccount()),
            ),
              ],
              ),
            ),



    );
  }
}

class NextPageButton extends StatelessWidget {
  const NextPageButton({
    required this.text,
    this.press,
    super.key,
  });

  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        press!();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xFF89008B),
        ),
        margin: const EdgeInsets.only(right: 16, bottom: 16),
        height: 47,
        width: 360,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFFEFEFE),
            ),
          ),
        ),
      ),
    );
  }
}
