import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class ObjectField extends LogosField<ObjectOption> {
  const ObjectField.fromOption(
    ObjectOption option, {
    required super.optionKey,
  }) : super(option: option);

  @override
  Widget body(BuildContext context) => Column(children: _fields());

  List<Widget> _fields() => option.options
      .map((option) => LogosField.fromOption(option, optionKey: optionKey))
      .map((field) => Expanded(child: field))
      .toList();
}
