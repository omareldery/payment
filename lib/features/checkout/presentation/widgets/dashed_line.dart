import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: List.generate(
        35,
            (index) =>  Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              height: 2,
              color: const Color(0xFFB8B8B8),
            ),
          ),
        ),
      ),
    );
  }
}
