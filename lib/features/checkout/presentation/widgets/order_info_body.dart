import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/styles.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_button.dart';

import '../views/payment_details_view.dart';

class OrderInfoBody extends StatelessWidget {
  const OrderInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Order Subtotal',
                style: AppStyles.font18BlackW400,
              ),
              const Spacer(),
              Text(
                '\$ 42.75',
                style: AppStyles.font18BlackW400,
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                'Discount',
                style: AppStyles.font18BlackW400,
              ),
              const Spacer(),
              Text(
                '\$ 0',
                style: AppStyles.font18BlackW400,
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                'Shipping',
                style: AppStyles.font18BlackW400,
              ),
              const Spacer(),
              Text(
                '\$ 0',
                style: AppStyles.font18BlackW400,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(
            thickness: 1.5,
            color: Colors.grey.withOpacity(0.5),
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Total',
                style: AppStyles.font24BlackW600,
              ),
              const Spacer(),
              Text(
                '\$ 50.99',
                style: AppStyles.font24BlackW600,
              ),
            ],
          ),
          CustomButton(title: 'Complete Payment',
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  PaymentDetailsView()),
              );
            },),
        ],
      ),
    );
  }
}
