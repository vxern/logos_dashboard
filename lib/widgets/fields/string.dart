import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class StringField extends LogosField<StringOption> {
  const StringField.fromOption(
    StringOption option, {
    required super.optionKey,
  }) : super(option: option);

  @override
  Widget body(BuildContext context) => Card(
        child: FormBuilderTextField(name: optionKey),
      );
}
