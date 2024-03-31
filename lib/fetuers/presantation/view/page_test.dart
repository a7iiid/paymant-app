import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/payment_methods_bottom_sheet.dart';

class page_test extends StatefulWidget {
  const page_test({super.key});

  @override
  State<page_test> createState() => _page_testState();
}

class _page_testState extends State<page_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return PaymentMethodBottomSheet();
            },
          );
        },
      ),
    );
  }
}
