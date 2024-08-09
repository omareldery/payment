import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onTap});
final String title;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 20),
      height: 75,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ), child: Text(
        title,
        style: AppStyles.font20BlackW500,
      ),
      ),
    );
  }
}
