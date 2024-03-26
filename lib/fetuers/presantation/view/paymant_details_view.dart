import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/fetuers/presantation/model/paymant_model.dart';
import 'package:payment/fetuers/presantation/view/thank_you_view.dart';

import '../widget/custom_bottom.dart';
import '../widget/custom_cridet_card.dart';
import '../widget/paymantSelected.dart';

class PaymentDetails extends StatefulWidget {
  PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            const SliverToBoxAdapter(child: PymantSelected()),
            SliverToBoxAdapter(
                child: CustomCridetCard(
              formKey: formKey,
            )),
            SliverFillRemaining(
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 12.0, left: 16, right: 16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: customBottom(
                    title: "Payment",
                    formKey: formKey,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Validate')));
                        formKey.currentState!.save();
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThankYouView(),
                        ));
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Error')));
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
