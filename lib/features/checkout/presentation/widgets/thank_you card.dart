import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/styles.dart';
import 'dashed_line.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
          color: const Color(
            0xFFEDEDED,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 24, right: 24),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: AppStyles.font20BlackW500,
            ),
            const SizedBox(height: 6),
            Text(
              'Your transaction was successful',
              style: AppStyles.font18BlackW400,
            ),
            const SizedBox(
              height: 42,
            ),
            const ThankYouItemInfo(),
            const SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 1.5,
              color: Colors.grey.withOpacity(0.5),
            ),
            const SizedBox(
              height: 30,
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
            const SizedBox(
              height: 30,
            ),
            const CustomCardNum()
          ],
        ),
      ),
    );
  }
}

class ThankYouItemInfo extends StatelessWidget {
  const ThankYouItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoRow(
          title: 'Date',
          subtitle: '06/4/2024',
        ),
        SizedBox(
          height: 20,
        ),
        InfoRow(
          title: 'Time',
          subtitle: '10:15 AM',
        ),
        SizedBox(
          height: 20,
        ),
        InfoRow(
          title: 'To',
          subtitle: 'Omar Eldery',
        ),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.font18BlackW400,
        ),
        const Spacer(),
        Text(
          subtitle,
          style: AppStyles.font18BlackW600,
        )
      ],
    );
  }
}
class CustomCardNum extends StatelessWidget {
  const CustomCardNum({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 305,
      height: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SvgPicture.asset(
              'assets/icons/visa_logo.svg',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Credit Card',
                style: AppStyles.font18BlackW400,
              ),
              Text(
                'MasterCard ** 34',
                style: AppStyles.font18BlackW400.copyWith(
                  color: Colors.black.withOpacity(.6),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
