import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/fields/array.dart';
import 'package:logos_dashboard/widgets/fields/boolean.dart';
import 'package:logos_dashboard/widgets/fields/cefr_levels.dart';
import 'package:logos_dashboard/widgets/fields/management.dart';
import 'package:logos_dashboard/widgets/fields/map.dart';
import 'package:logos_dashboard/widgets/fields/number.dart';
import 'package:logos_dashboard/widgets/fields/object.dart';
import 'package:logos_dashboard/widgets/fields/rate_limit.dart';
import 'package:logos_dashboard/widgets/fields/string.dart';
import 'package:logos_dashboard/widgets/fields/time_struct.dart';
import 'package:logos_dashboard/widgets/fields/tuple.dart';
import 'package:logos_dashboard/widgets/fields/verdict_requirement.dart';

typedef LogosFieldConstructor<T extends Option> = LogosField<T> Function(
  T option, {
  required String optionKey,
});

abstract class LogosField<T extends Option> extends StatelessWidget {
  final T option;
  final String optionKey;

  const LogosField({required this.option, required this.optionKey});

  factory LogosField.fromOption(
    T option, {
    required String optionKey,
    bool root = false,
  }) {
    if (!root) {
      optionKey = composeOptionKey(option: option, optionKey: optionKey);
    }

    return switch (option) {
      StringOption() => StringField.fromOption(option, optionKey: optionKey),
      BooleanOption() => BooleanField.fromOption(option, optionKey: optionKey),
      NumberOption() => NumberField.fromOption(option, optionKey: optionKey),
      ObjectOption() => ObjectField.fromOption(option, optionKey: optionKey),
      ArrayOption() => ArrayField.fromOption(option, optionKey: optionKey),
      TupleOption() => TupleField.fromOption(option, optionKey: optionKey),
      MapOption() => MapField.fromOption(option, optionKey: optionKey),
      TimeStructOption() =>
        TimeStructField.fromOption(option, optionKey: optionKey),
      RateLimitOption() =>
        RateLimitField.fromOption(option, optionKey: optionKey),
      ManagementOption() =>
        ManagementField.fromOption(option, optionKey: optionKey),
      VerdictRequirementOption() =>
        VerdictRequirementField.fromOption(option, optionKey: optionKey),
      CefrLevelsOption() =>
        CefrLevelsField.fromOption(option, optionKey: optionKey),
    } as LogosField<T>;
  }

  static String composeOptionKey<T extends Option>({
    required T option,
    required String optionKey,
  }) =>
      '$optionKey.${option.name}';

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
