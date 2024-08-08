import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/fields/array.dart';
import 'package:logos_dashboard/widgets/fields/boolean.dart';
import 'package:logos_dashboard/widgets/fields/cefr_levels.dart';
import 'package:logos_dashboard/widgets/fields/complex.dart';
import 'package:logos_dashboard/widgets/fields/management.dart';
import 'package:logos_dashboard/widgets/fields/map.dart';
import 'package:logos_dashboard/widgets/fields/number.dart';
import 'package:logos_dashboard/widgets/fields/rate_limit.dart';
import 'package:logos_dashboard/widgets/fields/string.dart';
import 'package:logos_dashboard/widgets/fields/time_struct.dart';
import 'package:logos_dashboard/widgets/fields/tuple.dart';
import 'package:logos_dashboard/widgets/fields/verdict_requirement.dart';

abstract class LogosField<T extends Option> extends StatelessWidget {
  final T option;

  const LogosField({required this.option});

  static StatelessWidget fromOption<T extends Option>(T option) =>
      switch (option) {
        StringOption() => StringField.fromOption(option),
        BooleanOption() => BooleanField.fromOption(option),
        NumberOption() => NumberField.fromOption(option),
        ObjectOption() => ComplexField.fromOption(option),
        ArrayOption() => ArrayField.fromOption(option),
        TupleOption() => TupleField.fromOption(option),
        MapOption() => MapField.fromOption(option),
        TimeStructOption() => TimeStructField.fromOption(option),
        RateLimitOption() => RateLimitField.fromOption(option),
        ManagementOption() => ManagementField.fromOption(option),
        VerdictRequirementOption() =>
          VerdictRequirementField.fromOption(option),
        CefrLevelsOption() => CefrLevelsField.fromOption(option),
      };

  @override
  Widget build(BuildContext context) => Card.outlined(
        color: Theme.of(context).primaryColorLight,
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
        padding: const EdgeInsets.all(8).w,
        child: Align(
          alignment: Alignment.centerLeft,
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
