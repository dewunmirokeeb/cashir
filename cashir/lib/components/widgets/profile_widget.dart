import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/models/user.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    required this.user,
    super.key,
  });
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      height: 150,
      width: 600,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            child: Icon(
              Icons.person,
              size: 45,
              color: ColorConstants.primaryColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            "Hi ${user.firstName}\n welcome let us make some payment",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
