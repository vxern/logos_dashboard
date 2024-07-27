import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class BooleanField extends LogosField<BooleanOption> {
  const BooleanField.fromOption(BooleanOption option) : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
