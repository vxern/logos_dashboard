import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/module.dart';
import 'package:logos_dashboard/widgets/module_card.dart';

class ModulesPage extends StatelessWidget {
  const ModulesPage();

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.05.sh),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemCount: Module.values.length,
          itemBuilder: (context, index) {
            final module = Module.values[index];

            return ModuleCard(
              title: context.tr('modules.${module.name}.title'),
              description: context.tr('modules.${module.name}.description'),
            );
          },
        ),
      );
}
