import 'package:flutter/material.dart';
import 'package:the_ultimate_payment_processing_package/src/helpers/m.dart';

import '../../../../models/card.dart';
import '../../widgets/input/base_field.dart';

class NameField extends BaseTextField {
  NameField({
    Key? key,
    required PaymentCard? card,
    required FormFieldSetter<String> onSaved,
  }) : super(
          key: key,
          labelText: 'الاسم على البطاقة',
          validator: _validate,
          onSaved: onSaved,
          keyboardType: TextInputType.name,
          initialValue:
              card != null && card.name != null ? card.name.toString() : null,
        );

  static String? _validate(String? value) {
    if (value == null || value.trim().isEmpty || value.split(' ').length < 2) {
      return kMessages.notAValidFullName;
    }
    return null;
  }
}
