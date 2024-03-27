import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/constants/images.dart';
import 'package:payment/core/utlis/appStyle.dart';
import 'package:payment/fetuers/presantation/widget/ordar_info.dart';
import 'package:payment/fetuers/presantation/widget/totle_prise.dart';

import 'paymant_method_info.dart';

class infoPayment extends StatelessWidget {
  const infoPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 66.0, left: 22, right: 22),
      child: Column(
        children: [
          Text('Thank you!',
              textAlign: TextAlign.center, style: AppStyle.normal25),
          Text('Your transaction was successful',
              textAlign: TextAlign.center, style: AppStyle.regylar20),
          const SizedBox(
            height: 22,
          ),
          OrdarInfo(title: 'Date', data: '01/24/2023'),
          OrdarInfo(title: 'Time', data: '10:15 AM'),
          OrdarInfo(title: 'To', data: 'Sam Louis'),
          const Divider(
            thickness: 2,
            height: 60,
          ),
          TotlePrise(title: 'Totle', value: r'$89'),
          const SizedBox(height: 30),
          paymantMethodInfo(),
        ],
      ),
    );
  }
}
