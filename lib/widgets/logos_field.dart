import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/fields/boolean.dart';
import 'package:logos_dashboard/widgets/fields/cefr_levels.dart';
import 'package:logos_dashboard/widgets/fields/complex.dart';
import 'package:logos_dashboard/widgets/fields/management.dart';
import 'package:logos_dashboard/widgets/fields/map.dart';
import 'package:logos_dashboard/widgets/fields/multiple.dart';
import 'package:logos_dashboard/widgets/fields/number.dart';
import 'package:logos_dashboard/widgets/fields/rate_limit.dart';
import 'package:logos_dashboard/widgets/fields/string.dart';
import 'package:logos_dashboard/widgets/fields/time_struct.dart';
import 'package:logos_dashboard/widgets/fields/verdict_requirement.dart';

abstract class LogosField<T extends Option> extends StatelessWidget {
  final T option;

  const LogosField({required this.option});

  static StatelessWidget fromOption<T extends Option>(T option) =>
      switch (option) {
        final StringOption option => StringField.fromOption(option),
        final BooleanOption option => BooleanField.fromOption(option),
        final NumberOption option => NumberField.fromOption(option),
        final MultipleOption option => MultipleField.fromOption(option),
        final ComplexOption option => ComplexField.fromOption(option),
        final MapOption option => MapField.fromOption(option),
        final TimeStructOption option => TimeStructField.fromOption(option),
        final RateLimitOption option => RateLimitField.fromOption(option),
        final ManagementOption option => ManagementField.fromOption(option),
        final VerdictRequirementOption option =>
          VerdictRequirementField.fromOption(option),
        final CefrLevelsOption option => CefrLevelsField.fromOption(option),
      };

  @override
  Widget build(BuildContext context) => Card.filled(
        color: Theme.of(context).primaryColor,
        clipBehavior: Clip.antiAlias,
        child: _contents(context),
      );

  Widget _contents(BuildContext context) => Column(
        children: [
          _heading(context),
          Expanded(child: _body(context)),
        ],
      );

  Widget _heading(BuildContext context) => Padding(
        padding: const EdgeInsets.all(5).w,
        child: Center(
          child: Text(
            // TODO(vxern): Localise.
            option.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      );

  Widget _body(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15).w,
        child: body(context),
      );

  Widget body(BuildContext context);
}
