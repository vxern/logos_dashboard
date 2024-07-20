import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Module {
  information(Symbols.info),
  language(Symbols.translate),
  moderation(Symbols.shield),
  server(Symbols.settings),
  social(Symbols.handshake);

  final IconData icon;

  const Module(this.icon);
}
