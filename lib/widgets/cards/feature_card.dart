import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logos_dashboard/structs/feature.dart';
import 'package:logos_dashboard/widgets/logos_card.dart';

class FeatureCard extends LogosCard {
  final GlobalKey _formKey;

  FeatureCard._({
    required super.title,
    required super.description,
    required super.icon,
    required super.color,
  }) : _formKey = GlobalKey<FormBuilderState>();

  factory FeatureCard.fromFeature(
    BuildContext context,
    Feature feature,
  ) =>
      FeatureCard._(
        title: context.tr('features.${feature.name}.title'),
        description: context.tr('features.${feature.name}.description'),
        color: Theme.of(context).primaryColorLight,
        icon: feature.icon,
      );

  @override
  Widget body(BuildContext context) => FormBuilder(
        key: _formKey,
        child: Column(
          children: [FormBuilderTextField(name: 'a')],
        ),
      );
}
