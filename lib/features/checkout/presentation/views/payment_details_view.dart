import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_project/core/utils/styles.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_credit_card.dart';

import '../widgets/payment_methods.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Payment Details',
          textAlign: TextAlign.center,
          style: AppStyles.font25BlackW500,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset('assets/icons/back_arrow.svg'),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PaymentMethods(),
            CustomCreditCard(),
          ],
        ),
      )
    );
  }
}

