import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isSelected = false, required this.image,
  });
  final bool isSelected;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 200),
      height: 58,
      width: 98,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.2,
              color: isSelected
                  ? const Color(
                      0xFF34A853,
                    )
                  : Colors.black,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows:  [
           isSelected ? const BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 0.5),
              blurRadius: 4,
              spreadRadius: 0,
            ) : const BoxShadow(
              color: Colors.transparent,
              offset: Offset(0, 0.5),
              blurRadius: 0,
              spreadRadius: 0,
            )
          ]),
      child: Center(
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
