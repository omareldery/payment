import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodItems = const [
    'assets/images/mastercard.svg',
    'assets/images/paypal.svg',
    'assets/images/applepayment.svg'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (
            context,
            index,
            ) =>
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: (){
                  selectedIndex = index;
                  setState(() {
                  });
                },
                child: PaymentMethodItem(
                  image: paymentMethodItems[index],
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
        itemCount: paymentMethodItems.length,
      ),
    );
  }
}
