import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class NumberField extends LogosField<NumberOption> {
  const NumberField.fromOption(
    NumberOption option, {
    required super.optionKey,
  }) : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
