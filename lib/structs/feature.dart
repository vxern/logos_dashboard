import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Feature {
  journalling(
    title: 'features.journalling.title',
    description: 'features.journalling.description',
    icon: Symbols.article,
    options: {
      Option.string('channelId'),
    },
  ),
  notices(
    title: 'features.notices.title',
    description: 'features.notices.description',
    icon: Symbols.info,
    options: {
      Option.object(
        'information',
        options: {
          Option.string('channelId'),
          Option.string('inviteLink'),
        },
      ),
      Option.object(
        'resources',
        options: {
          Option.string('channelId'),
        },
      ),
      Option.object(
        'roles',
        options: {
          Option.string('channelId'),
        },
      ),
      Option.object(
        'welcome',
        options: {
          Option.string('channelId'),
          Option.string('ruleChannelId'),
        },
      ),
    },
  ),
  answers(
    title: 'features.answers.title',
    description: 'features.answers.description',
    icon: Symbols.contact_support,
    options: {},
  ),
  corrections(
    title: 'features.corrections.title',
    description: 'features.corrections.description',
    icon: Symbols.draw,
    options: {},
  ),
  cefr(
    title: 'features.cefr.title',
    description: 'features.cefr.description',
    icon: Symbols.abc,
    options: {
      Option.object(
        'examples',
        options: {
          Option.cefrLevels('levels'),
        },
      ),
    },
  ),
  game(
    title: 'features.game.title',
    description: 'features.game.description',
    icon: Symbols.stadia_controller,
    options: {},
  ),
  resources(
    title: 'features.resources.title',
    description: 'features.resources.description',
    icon: Symbols.book,
    options: {
      Option.string('url'),
    },
  ),
  translate(
    title: 'features.translate.title',
    description: 'features.translate.description',
    icon: Symbols.translate,
    options: {},
  ),
  word(
    title: 'features.word.title',
    description: 'features.word.description',
    icon: Symbols.match_word,
    options: {},
  ),
  targetOnly(
    title: 'features.targetOnly.title',
    description: 'features.targetOnly.description',
    icon: Symbols.target,
    options: {
      Option.tuple(
        'channelIds',
        option: Option.string('channelId'),
      ),
    },
  ),
  roleLanguages(
    title: 'features.roleLanguages.title',
    description: 'features.roleLanguages.description',
    icon: Symbols.work,
    options: {
      Option.map(
        'ids',
        entries: MapEntry(OptionType.string, OptionType.string),
      ),
    },
  ),
  alerts(
    title: 'features.alerts.title',
    description: 'features.alerts.description',
    icon: Symbols.error,
    options: {
      Option.string('channelId'),
    },
  ),
  policy(
    title: 'features.policy.title',
    description: 'features.policy.description',
    icon: Symbols.campaign,
    options: {},
  ),
  rules(
    title: 'features.rules.title',
    description: 'features.rules.description',
    icon: Symbols.gavel,
    options: {},
  ),
  purging(
    title: 'features.purging.title',
    description: 'features.purging.description',
    icon: Symbols.delete,
    options: {
      Option.boolean('journalling'),
    },
  ),
  slowmode(
    title: 'features.slowmode.title',
    description: 'features.slowmode.description',
    icon: Symbols.relax,
    options: {
      Option.boolean('journalling'),
    },
  ),
  timeouts(
    title: 'features.timeouts.title',
    description: 'features.timeouts.description',
    icon: Symbols.clock_loader_10,
    options: {
      Option.boolean('journalling'),
    },
  ),
  warns(
    title: 'features.warns.title',
    description: 'features.warns.description',
    icon: Symbols.warning,
    options: {
      Option.boolean('journalling'),
      Option.timeStruct('expiration'),
      Option.number('limit'),
      Option.object(
        'autoTimeout',
        options: {
          Option.timeStruct('duration'),
        },
      ),
    },
  ),
  reports(
    title: 'features.reports.title',
    description: 'features.reports.description',
    icon: Symbols.flag,
    options: {
      Option.string('channelId'),
      Option.boolean('journalling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  verification(
    title: 'features.verification.title',
    description: 'features.verification.description',
    icon: Symbols.new_releases,
    options: {
      Option.string('channelId'),
      Option.boolean('journalling'),
      Option.management('management'),
      Option.object(
        'voting',
        options: {
          Option.management('management'),
          Option.object(
            'verdict',
            options: {
              Option.verdictRequirement('acceptance'),
              Option.verdictRequirement('rejection'),
            },
          ),
        },
      ),
    },
  ),
  dynamicVoiceChannels(
    title: 'features.dynamicVoiceChannels.title',
    description: 'features.dynamicVoiceChannels.description',
    icon: Symbols.voice_chat,
    options: {
      Option.tuple(
        'channels',
        option: Option.object(
          'channel',
          options: {
            Option.string('id'),
            Option.number('minimum'),
            Option.number('maximum'),
          },
        ),
      ),
    },
  ),
  entry(
    title: 'features.entry.title',
    description: 'features.entry.description',
    icon: Symbols.door_open,
    options: {},
  ),
  roleIndicators(
    title: 'features.roleIndicators.title',
    description: 'features.roleIndicators.description',
    icon: Symbols.work,
    options: {
      Option.number('limit'),
      Option.tuple(
        'roles',
        option: Option.object(
          'role',
          options: {
            Option.string('roleId'),
            Option.string('indicator'),
          },
        ),
      ),
    },
  ),
  suggestions(
    title: 'features.suggestions.title',
    description: 'features.suggestions.description',
    icon: Symbols.emoji_objects,
    options: {
      Option.string('channelId'),
      Option.boolean('journalling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  resource(
    title: 'features.resource.title',
    description: 'features.resource.description',
    icon: Symbols.book,
    options: {
      Option.string('channelId'),
      Option.boolean('journalling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  tickets(
    title: 'features.tickets.title',
    description: 'features.tickets.description',
    icon: Symbols.confirmation_number,
    options: {
      Option.string('channelId'),
      Option.string('categoryId'),
      Option.boolean('journalling'),
      Option.rateLimit('rateLimit'),
      Option.number('limit'),
      Option.management('management'),
    },
  ),
  music(
    title: 'features.music.title',
    description: 'features.music.description',
    icon: Symbols.note,
    options: {
      Option.number('implicitVolume'),
    },
  ),
  praises(
    title: 'features.praises.title',
    description: 'features.praises.description',
    icon: Symbols.folded_hands,
    options: {
      Option.boolean('journalling'),
      Option.rateLimit('rateLimit'),
    },
  ),
  profile(
    title: 'features.profile.title',
    description: 'features.profile.description',
    icon: Symbols.person,
    options: {},
  );

  final String title;
  final String description;
  final IconData icon;
  final Set<Option> options;

  const Feature({
    required this.title,
    required this.description,
    required this.icon,
    required this.options,
  });
}
