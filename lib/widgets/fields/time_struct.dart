import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class TimeStructField extends LogosField<TimeStructOption> {
  const TimeStructField.fromOption(TimeStructOption option)
      : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
