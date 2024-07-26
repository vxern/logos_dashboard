import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/option.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum Feature {
  journalling(
    Symbols.article,
    options: {
      Option.string('channelId'),
    },
  ),
  notices(
    Symbols.info,
    options: {
      Option.complex(
        'information',
        options: {
          Option.string('channelId'),
          Option.string('inviteLink'),
        },
      ),
      Option.complex(
        'resources',
        options: {
          Option.string('channelId'),
        },
      ),
      Option.complex(
        'roles',
        options: {
          Option.string('channelId'),
        },
      ),
      Option.complex(
        'welcome',
        options: {
          Option.string('channelId'),
          Option.string('ruleChannelId'),
        },
      ),
    },
  ),
  answers(
    Symbols.contact_support,
    options: {},
  ),
  corrections(
    Symbols.draw,
    options: {},
  ),
  cefr(
    Symbols.abc,
    options: {
      Option.boolean('extended'),
      Option.complex(
        'examples',
        options: {
          Option.cefrLevels('levels'),
        },
      ),
    },
  ),
  game(
    Symbols.stadia_controller,
    options: {},
  ),
  resources(
    Symbols.book,
    options: {
      Option.string('url'),
    },
  ),
  translate(
    Symbols.translate,
    options: {},
  ),
  word(
    Symbols.match_word,
    options: {},
  ),
  targetOnly(
    Symbols.target,
    options: {
      Option.multiple(
        'channelIds',
        option: Option.string('channelId'),
      ),
    },
  ),
  roleLanguages(
    Symbols.work,
    options: {
      Option.map(
        'ids',
        entries: MapEntry(OptionType.string, OptionType.string),
      ),
    },
  ),
  alerts(
    Symbols.error,
    options: {
      Option.string('channelId'),
    },
  ),
  policy(
    Symbols.campaign,
    options: {},
  ),
  rules(
    Symbols.gavel,
    options: {},
  ),
  purging(
    Symbols.delete,
    options: {
      Option.boolean('journaling'),
    },
  ),
  slowmode(
    Symbols.relax,
    options: {
      Option.boolean('journaling'),
    },
  ),
  timeouts(
    Symbols.clock_loader_10,
    options: {
      Option.boolean('journaling'),
    },
  ),
  warns(
    Symbols.warning,
    options: {
      Option.boolean('journaling'),
      Option.timeStruct('expiration'),
      Option.number('limit'),
      Option.complex(
        'autoTimeout',
        options: {
          Option.timeStruct('duration'),
        },
      ),
    },
  ),
  reports(
    Symbols.flag,
    options: {
      Option.string('channelId'),
      Option.boolean('journaling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  verification(
    Symbols.new_releases,
    options: {
      Option.string('channelId'),
      Option.boolean('journaling'),
      Option.management('management'),
      Option.complex(
        'voting',
        options: {
          Option.management('management'),
          Option.complex(
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
    Symbols.voice_chat,
    options: {
      Option.multiple(
        'channels',
        option: Option.complex(
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
    Symbols.door_open,
    options: {},
  ),
  roleIndicators(
    Symbols.work,
    options: {
      Option.number('limit'),
      Option.multiple(
        'roles',
        option: Option.complex(
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
    Symbols.emoji_objects,
    options: {
      Option.string('channelId'),
      Option.boolean('journaling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  resource(
    Symbols.book,
    options: {
      Option.string('channelId'),
      Option.boolean('journaling'),
      Option.rateLimit('rateLimit'),
      Option.management('management'),
    },
  ),
  tickets(
    Symbols.confirmation_number,
    options: {
      Option.string('channelId'),
      Option.string('categoryId'),
      Option.boolean('journaling'),
      Option.rateLimit('rateLimit'),
      Option.number('limit'),
      Option.management('management'),
    },
  ),
  music(
    Symbols.note,
    options: {
      Option.number('implicitVolume'),
    },
  ),
  praises(
    Symbols.folded_hands,
    options: {
      Option.boolean('journaling'),
      Option.rateLimit('rateLimit'),
    },
  ),
  profile(
    Symbols.person,
    options: {},
  );

  final IconData icon;
  final Set<Option> options;

  const Feature(this.icon, {required this.options});
}
