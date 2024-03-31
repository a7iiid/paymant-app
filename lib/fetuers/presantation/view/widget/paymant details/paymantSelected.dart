import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';
import '../../../model/paymant_model.dart';
import '../../paymant_details_view.dart';
import 'pymant_item_selected.dart';

class PymantSelected extends StatefulWidget {
  const PymantSelected({
    super.key,
  });

  @override
  State<PymantSelected> createState() => _PymantSelectedState();
}

class _PymantSelectedState extends State<PymantSelected> {
  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    List<PaymantModel> paymantList = [
      PaymantModel(isActiv: true, image: Assets.imagesCard),
      PaymantModel(isActiv: false, image: Assets.imagesPaypal),
      PaymantModel(isActiv: false, image: Assets.imagesApplePay),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: paymantList.asMap().entries.map((e) {
        return Expanded(
            child: GestureDetector(
          onTap: () => changeSelect(e.key),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: PymantItemSelected(
              isActive: selectindex == e.key ? true : false,
              paymantModel: e.value,
            ),
          ),
        ));
      }).toList(),
    );
  }

  changeSelect(int index) {
    setState(() {
      selectindex = index;
    });
  }
}
