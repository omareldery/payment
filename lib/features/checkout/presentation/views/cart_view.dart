import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_project/core/utils/styles.dart';
import 'package:payment_project/features/checkout/presentation/widgets/order_info_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: AppStyles.font25BlackW500,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/cart_bag.png',
              height: 480,
              width: 1000,
            ),
          ),
          const OrderInfoBody(),
        ],
      ),
    );
  }
}
