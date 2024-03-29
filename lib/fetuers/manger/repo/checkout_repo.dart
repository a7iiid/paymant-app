import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utlis/failure.dart';
import 'package:payment/fetuers/manger/models/payment_input_intint_model.dart';
import 'package:payment/fetuers/manger/models/payment_intint_model/payment_intint_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentInputIntantModel paymentInputIntantModel});
}
