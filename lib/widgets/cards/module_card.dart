import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/module.dart';
import 'package:logos_dashboard/widgets/logos_card.dart';

class ModuleCard extends LogosCard {
  const ModuleCard._({
    required super.title,
    required super.description,
    required super.icon,
    required super.color,
    super.onTap,
  });

  factory ModuleCard.fromModule(
    BuildContext context,
    Module module, {
    VoidCallback? onTap,
  }) =>
      ModuleCard._(
        title: context.tr(module.title),
        description: context.tr(module.description),
        color: Theme.of(context).cardColor,
        icon: module.icon,
        onTap: onTap,
      );

  @override
  Widget body(BuildContext context) => Center(
        child: Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
}
