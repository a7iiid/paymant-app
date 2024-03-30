import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment/fetuers/data/models/payment_input_intint_model.dart';
import 'package:payment/fetuers/data/repo/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit({required this.checkoutRepo}) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayment(
      {required PaymentInputIntantModel paymentInputIntantModel}) async {
    emit(PaymentLoding());
    var data = await checkoutRepo.makePayment(
        paymentInputIntantModel: paymentInputIntantModel);

    data.fold(
        (failuer) => emit(PaymentFailuer(messageError: failuer.messageError)),
        (success) => emit(PaymentSuccess()));
  }
}
