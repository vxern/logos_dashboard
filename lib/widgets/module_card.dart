import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/module.dart';

class ModuleCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback? onTap;

  const ModuleCard({
    required this.title,
    required this.description,
    required this.icon,
    this.onTap,
  });

  factory ModuleCard.fromModule(
    BuildContext context,
    Module module, {
    VoidCallback? onTap,
  }) =>
      ModuleCard(
        title: context.tr('modules.${module.name}.title'),
        description: context.tr('modules.${module.name}.description'),
        icon: module.icon,
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Card.filled(
          color: Theme.of(context).cardColor,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              _heading(context),
              Expanded(child: _body(context)),
            ],
          ),
        ),
      );

  Widget _heading(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 5,
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5).w,
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(icon, size: 0.02.sw),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _body(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15).w,
        child: Center(
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
}
