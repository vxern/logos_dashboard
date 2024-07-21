import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logos_dashboard/structs/module.dart';
import 'package:logos_dashboard/widgets/module_card.dart';

class ModulesPage extends StatelessWidget {
  const ModulesPage();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.05.sh),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 2.5,
            mainAxisSpacing: 0.01.sh,
            crossAxisSpacing: 0.01.sw,
            children: _moduleGridTiles(context),
          ),
        ),
      );

  List<Widget> _moduleGridTiles(BuildContext context) => Module.values
      .map(
        (module) => GridTile(
          child: ModuleCard.fromModule(
            context,
            module,
            onTap: () => context.goNamed('${module.name}-module'),
          ),
        ),
      )
      .toList();
}
