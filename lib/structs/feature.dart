import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Feature {
  journalling(Symbols.article),
  notices(Symbols.info),
  answers(Symbols.contact_support),
  corrections(Symbols.draw),
  cefr(Symbols.abc),
  game(Symbols.stadia_controller),
  resource(Symbols.book),
  translate(Symbols.translate),
  word(Symbols.match_word),
  targetOnly(Symbols.target),
  roleLanguages(Symbols.work),
  alerts(Symbols.error),
  policy(Symbols.campaign),
  rules(Symbols.gavel),
  purging(Symbols.delete),
  slowmode(Symbols.relax),
  timeouts(Symbols.clock_loader_10),
  warns(Symbols.warning),
  reports(Symbols.flag),
  verification(Symbols.new_releases),
  dynamicVoiceChannels(Symbols.voice_chat),
  entry(Symbols.door_open),
  roleIndicators(Symbols.work),
  suggestions(Symbols.emoji_objects),
  resources(Symbols.book),
  tickets(Symbols.confirmation_number),
  music(Symbols.note),
  praises(Symbols.folded_hands),
  profile(Symbols.person);

  final IconData icon;

  const Feature(this.icon);
}
