import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_button.dart';

import '../views/payment_details_view.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          isHolderNameVisible: true,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(cardNumber: cardNumber, expiryDate: expiryDate, cardHolderName: cardHolderName, cvvCode: cvvCode, onCreditCardModelChange: (creditCardModel){
          cardHolderName = creditCardModel.cardHolderName;
          cardNumber = creditCardModel.cardNumber;
          expiryDate = creditCardModel.expiryDate;
          cvvCode = creditCardModel.cvvCode;
          showBackView = creditCardModel.isCvvFocused;
          setState(() {});
        }, formKey: formKey,),
        const SizedBox(
          height:60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaymentDetailsView()),
            );
          }, title: 'Pay',
        )
      ],
    );
  }
}
