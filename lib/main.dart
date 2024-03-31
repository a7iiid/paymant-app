import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utlis/apiKey.dart';

import 'fetuers/presantation/view/paymant_details_view.dart';

void main() {
  Stripe.publishableKey = ApiKey.publishableKey;
  runApp(const paymantApp());
}

class paymantApp extends StatelessWidget {
  const paymantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentDetails(),
    );
  }
}
