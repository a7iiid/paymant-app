import 'package:flutter/material.dart';

import 'fetuers/presantation/view/paymant_details_view.dart';

void main() {
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
