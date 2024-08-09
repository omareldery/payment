import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/widgets/thank_you%20card.dart';

import 'dashed_line.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(clipBehavior: Clip.none, children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ThankYouCard(),
      ),
      Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.2 +20,
        left: 20+8,
        right: 20+8,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: DashedLine(),
        ),
      ),
      Positioned(
        top: -40,
        right: MediaQuery.sizeOf(context).width * 0.0,
        left: MediaQuery.sizeOf(context).width * 0.0,
        child: const CircleAvatar(
            radius: 60,
            backgroundColor: Color(
              0xFFEDEDED,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF34A853),
              child: Icon(
                size: 60,
                Icons.check,
                color: Colors.white,
              ),
            )),
      ),
      Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.2,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      Positioned(
        right: MediaQuery.sizeOf(context).width * 0,
        bottom: MediaQuery.sizeOf(context).height * 0.2,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
    ]);
  }
}
