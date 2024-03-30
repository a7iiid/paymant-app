import 'dart:async';

import 'package:payment/core/utlis/ApiSeirves.dart';
import 'package:payment/core/utlis/apiKey.dart';
import 'package:payment/fetuers/data/models/payment_input_intint_model.dart';
import 'package:payment/fetuers/data/models/payment_intint_model/payment_intint_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeSeirves {
  final ApiSeirves apiSeirves = ApiSeirves();
  Future<PaymentIntintModel> createPaymentIntint(
      PaymentInputIntantModel paymentInputIntantModel) async {
    var response = await apiSeirves.post(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: paymentInputIntantModel.toJson(),
        token: ApiKey.SecretKeyStripe);
    var paymentInintModel = PaymentIntintModel.fromJson(response.data);
    return paymentInintModel;
  }

  Future initPaymentSheet({required String paymentIntintClintSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntintClintSecret,
        merchantDisplayName: "PTMA",
      ),
    );
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentInputIntantModel paymentInputIntantModel}) async {
    var paymentIntintModel = await createPaymentIntint(paymentInputIntantModel);

    await initPaymentSheet(
        paymentIntintClintSecret: paymentIntintModel.clientSecret!);
    await displayPaymentSheet();
  }
}
