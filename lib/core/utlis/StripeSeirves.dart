import 'dart:async';

import 'package:payment/core/utlis/ApiSeirves.dart';
import 'package:payment/core/utlis/apiKey.dart';
import 'package:payment/fetuers/manger/models/payment_input_intint_model.dart';
import 'package:payment/fetuers/manger/models/payment_intint_model/payment_intint_model.dart';

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
}
