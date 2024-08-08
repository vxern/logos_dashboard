import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logos_dashboard/structs/feature.dart';
import 'package:logos_dashboard/widgets/logos_card.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class FeatureCard extends LogosCard {
  final GlobalKey _formKey;
  final Feature feature;

  FeatureCard._({
    required super.title,
    required super.description,
    required super.icon,
    required super.color,
    required this.feature,
  }) : _formKey = GlobalKey<FormBuilderState>();

  factory FeatureCard.fromFeature(
    BuildContext context,
    Feature feature,
  ) =>
      FeatureCard._(
        title: context.tr(feature.title),
        description: context.tr(feature.description),
        color: Theme.of(context).primaryColorLight,
        icon: feature.icon,
        feature: feature,
      );

  @override
  Widget body(BuildContext context) => FormBuilder(
        key: _formKey,
        child: Column(children: _featureFields()),
      );

  List<Widget> _featureFields() => feature.options
      .map(
        (option) =>
            LogosField.fromOption(option, optionKey: option.name, root: true),
      )
      .map((field) => Expanded(child: field))
      .toList();
}
