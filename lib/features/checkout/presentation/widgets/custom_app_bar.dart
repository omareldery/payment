import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_project/core/utils/styles.dart';

AppBar customAppBar({required final String title}) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        'Payment Details',
        textAlign: TextAlign.center,
        style: AppStyles.font25BlackW500,
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SvgPicture.asset('assets/icons/back_arrow.svg'),
      ),
    );
