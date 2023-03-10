import 'package:booking_app_design/constants/colors.dart';
import 'package:booking_app_design/view/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              height: 420,
              child: Stack(
                children: const [
                  Positioned(
                    top: 80,
                    left: 120,
                    child: CustomImage(),
                  ),
                  Positioned(
                    top: 30,
                    left: 50,
                    child: CustomImage(
                      image: "assets/images/balloons.jpeg",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Travel with ease.",
              style: TextStyle(
                color: AppColors.kHeadTitleColor,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Making vacation or travel arrangements includes flights, hotels, and tours. \nListen to this conversation on the topic to plan your vacation.",
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
            CustomButton(
              size: const Size(200, 60),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "Home Screen");
              },
              text: "Get started",
              backgroundColor: AppColors.kOnBoardingButtonColor,
            )
          ],
        ),
      ),
    );
  }
}
