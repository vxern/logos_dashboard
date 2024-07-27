import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class RateLimitField extends LogosField<RateLimitOption> {
  const RateLimitField.fromOption(RateLimitOption option)
      : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
