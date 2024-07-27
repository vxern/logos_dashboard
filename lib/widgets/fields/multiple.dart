import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class MultipleField extends LogosField<MultipleOption> {
  const MultipleField.fromOption(MultipleOption option) : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
