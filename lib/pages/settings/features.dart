import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logos_dashboard/structs/module.dart';
import 'package:logos_dashboard/widgets/cards/feature_card.dart';

class FeaturesPage extends StatelessWidget {
  final Module module;

  const FeaturesPage({required this.module});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.05.sh),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            mainAxisSpacing: 0.01.sh,
            crossAxisSpacing: 0.01.sw,
            children: _featureGridTiles(context),
          ),
        ),
      );

  List<Widget> _featureGridTiles(BuildContext context) => module.features
      .map(
        (feature) => FeatureCard.fromFeature(
          context,
          feature,
        ),
      )
      .toList();
}
