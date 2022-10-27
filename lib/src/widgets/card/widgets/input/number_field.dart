import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../helpers/m.dart';
import '../../../../models/card.dart';
import '../../common/card_utils.dart';
import '../../widgets/common/input_formatters.dart';
import '../../widgets/input/base_field.dart';

class NumberField extends BaseTextField {
  NumberField(
      {Key? key,
      required PaymentCard? card,
      required TextEditingController? controller,
      required FormFieldSetter<String> onSaved,
      required Widget suffix})
      : super(
          key: key,
          labelText: kMessages.cardNumber,
          hintText: '0000 0000 0000 0000',
          controller: controller,
          onSaved: onSaved,
          suffix: suffix,
          validator: (String? value) => validateCardNum(value, card),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(19),
            CardNumberInputFormatter()
          ],
        );

  static String? validateCardNum(String? input, PaymentCard? card) {
    if (input == null || input.isEmpty) {
      return kMessages.enterAValidNumber;
    }

    input = CardUtils.getCleanedNumber(input);

    return card!.validNumber(input) ? null : kMessages.enterAValidNumber;
  }
}
