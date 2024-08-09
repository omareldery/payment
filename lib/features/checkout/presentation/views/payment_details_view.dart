import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_app_bar.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_project/features/checkout/presentation/widgets/custom_credit_card.dart';

import '../widgets/payment_methods.dart';

class PaymentDetailsView extends StatefulWidget {
 const  PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
final GlobalKey<FormState> formKey = GlobalKey();

AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: 'Payment Details'),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: PaymentMethods(),
          ),
           SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey, autoValidateMode: autoValidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment:  Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CustomButton(title: 'Pay', onTap: (){
                    if (formKey.currentState!.validate()) {
                       formKey.currentState!.save();
                       log('form is valid');
                    }else{
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {
                      });
                    }
                  }),
                ))
          ),
        ],
      )
    );
  }
}

