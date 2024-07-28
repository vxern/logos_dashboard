import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/feature.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Module {
  information(
    title: 'modules.information.title',
    description: 'modules.information.description',
    icon: Symbols.info,
    features: {
      Feature.journalling,
      Feature.notices,
    },
  ),
  language(
    title: 'modules.language.title',
    description: 'modules.language.description',
    icon: Symbols.translate,
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
    title: 'modules.moderation.title',
    description: 'modules.moderation.description',
    icon: Symbols.shield,
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
    title: 'modules.server.title',
    description: 'modules.server.description',
    icon: Symbols.settings,
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
    title: 'modules.social.title',
    description: 'modules.social.description',
    icon: Symbols.handshake,
    features: {
      Feature.music,
      Feature.praises,
      Feature.profile,
    },
  );

  final String title;
  final String description;
  final IconData icon;
  final Set<Feature> features;

  const Module({
    required this.title,
    required this.description,
    required this.icon,
    required this.features,
  });
}
