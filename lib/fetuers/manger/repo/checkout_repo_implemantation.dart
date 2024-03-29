import 'package:dartz/dartz.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utlis/StripeSeirves.dart';
import 'package:payment/core/utlis/failure.dart';
import 'package:payment/fetuers/manger/models/payment_input_intint_model.dart';
import 'package:payment/fetuers/manger/models/payment_intint_model/payment_intint_model.dart';
import 'package:payment/fetuers/manger/repo/checkout_repo.dart';

class checkoutRepoImpl extends CheckoutRepo {
  final StripeSeirves stripeSeirves = StripeSeirves();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentInputIntantModel paymentInputIntantModel}) async {
    try {
      await stripeSeirves.makePayment(
          paymentInputIntantModel: paymentInputIntantModel);
      return const Right(null);
    } catch (e) {
      return left(ServerFailure(messageError: e.toString()));
    }
  }
}
