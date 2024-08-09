import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 75,
        width: 350,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF34A853),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ), child: Text(
          'Complete Payment',
          style: AppStyles.font20BlackW500,
        ),
        ),
      ),
      onTap: () {
        // Navigator.pushNamed(context, '/paymentDetails');
      },
    );
  }
}
