import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/constants/size_constant.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onTap,
    this.buttonText = "",
    super.key,
  });
  final Function() onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.primaryColor,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(SizeConstant.size.width * 0.9, 50),
      ),
      child: const Text(
        "button",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
