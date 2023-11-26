import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/widgets/app_button.dart';
import 'package:cashir/components/widgets/app_text_input_field.dart';
import 'package:cashir/components/widgets/applogo.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const AppLogoWidget(),
              const SizedBox(height: 120),
              const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: ColorConstants.primaryColor,
                ),
              ),
              const SizedBox(height: 20),
              const AppTextInputField(
                hintText: "Enter phone number",
                labelText: "phonenumber",
              ),
              const SizedBox(height: 20),
              const AppTextInputField(
                hintText: "Enter password number",
                labelText: "password",
              ),
              const SizedBox(height: 20),
              AppButton(
                onTap: () {},
                buttonText: "Login",
              ),
              const Row(),
            ],
          ),
        ),
      ),
    );
  }
}
