import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/fetuers/presantation/model/paymant_model.dart';

import '../widget/paymantSelected.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          PymantSelected()
        ],
      ),
    );
  }
}
