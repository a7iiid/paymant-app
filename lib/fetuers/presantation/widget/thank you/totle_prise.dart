import 'package:flutter/cupertino.dart';
import 'package:payment/core/utlis/appStyle.dart';

class TotlePrise extends StatelessWidget {
  TotlePrise({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.bold24,
        ),
        Text(
          value,
          style: AppStyle.bold24,
        ),
      ],
    );
  }
}
