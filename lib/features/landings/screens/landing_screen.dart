import 'package:chat_app/common/widgets/custom_button.dart';
import 'package:chat_app/features/auth/screens/login_screen.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/common/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.cream,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Center(
              child: CustomText(
                textColor: AppColors.appBarColor,
                text: "ChatMe",
                fontWeight: FontWeight.bold,
                textSize: 30,
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              "assets/images/landing_image.png",
              width: 340,
              height: 340,
              color: AppColors.lightGreen,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomText(
                textAlign: TextAlign.center,
                text: "Read our privacy and policy. Tap "
                    "Agree and continue"
                    " to accept the Terms of Service.",
                textSize: 13,
                textColor: AppColors.darkGray,
              ),
            ),
            CustomButton(
              text: "AGREE AND CONTINUE",
              buttonColor: AppColors.appBarColor,
              width: screenWidth*0.75,
              onPressed: () {
                navigateToLoginScreen(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void navigateToLoginScreen(BuildContext context){
    Navigator.pushNamed(context, LoginScreen.routeName);
  }
}
