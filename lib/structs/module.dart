import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/feature.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Module {
  information(
    Symbols.info,
    features: {
      Feature.journalling,
      Feature.notices,
    },
  ),
  language(
    Symbols.translate,
    features: {
      Feature.answers,
      Feature.corrections,
      Feature.cefr,
      Feature.game,
      Feature.resource,
      Feature.translate,
      Feature.word,
      Feature.targetOnly,
      Feature.roleLanguages,
    },
  ),
  moderation(
    Symbols.shield,
    features: {
      Feature.alerts,
      Feature.policy,
      Feature.rules,
      Feature.purging,
      Feature.slowmode,
      Feature.timeouts,
      Feature.warns,
      Feature.reports,
      Feature.verification,
    },
  ),
  server(
    Symbols.settings,
    features: {
      Feature.dynamicVoiceChannels,
      Feature.entry,
      Feature.roleIndicators,
      Feature.suggestions,
      Feature.resources,
      Feature.tickets,
    },
  ),
  social(
    Symbols.handshake,
    features: {
      Feature.music,
      Feature.praises,
      Feature.profile,
    },
  );

  final IconData icon;
  final Set<Feature> features;

  const Module(this.icon, {required this.features});
}
