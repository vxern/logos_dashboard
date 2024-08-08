import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class ComplexField extends LogosField<ObjectOption> {
  const ComplexField.fromOption(ObjectOption option) : super(option: option);

  @override
  Widget body(BuildContext context) => Column(children: _fields());

  List<Widget> _fields() => option.options
      .map(LogosField.fromOption)
      .map((field) => Expanded(child: field))
      .toList();
}
