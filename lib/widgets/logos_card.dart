import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

abstract class LogosCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  bool get isClickable => onTap != null;

  const LogosCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Card.filled(
        color: color,
        clipBehavior: Clip.antiAlias,
        child: isClickable ? _clickableContents(context) : _contents(context),
      );

  Widget _clickableContents(BuildContext context) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: onTap,
          hoverColor: color.darker(10),
          child: _contents(context),
        ),
      );

  Widget _contents(BuildContext context) => Column(
        children: [
          _heading(context),
          Expanded(child: _body(context)),
        ],
      );

  Widget _heading(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: color,
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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(icon, size: 0.02.sw),
              ),
              Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              if (isClickable)
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Symbols.open_in_new, size: 0.02.sw),
                ),
            ],
          ),
        ),
      );

  Widget _body(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15).w,
        child: body(context),
      );

  Widget body(BuildContext context);
}
