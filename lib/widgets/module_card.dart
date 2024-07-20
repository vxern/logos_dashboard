import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModuleCard extends StatelessWidget {
  final String title;
  final String description;

  const ModuleCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) => Card.filled(
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(10).w,
          child: Column(
            children: [
              Text(title),
              Text(description),
            ],
          ),
        ),
      );
}
