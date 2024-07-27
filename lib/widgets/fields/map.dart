import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:logos_dashboard/widgets/logos_field.dart';

class MapField extends LogosField<MapOption> {
  const MapField.fromOption(MapOption option) : super(option: option);

  @override
  Widget body(BuildContext context) => Container();
}
