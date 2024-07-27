import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class VerdictRequirementField extends LogosField<VerdictRequirementOption> {
  const VerdictRequirementField.fromOption(VerdictRequirementOption option)
      : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
