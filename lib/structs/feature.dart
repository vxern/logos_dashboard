import 'package:flutter/material.dart';
import 'package:logos_dashboard/structs/configuration_option.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

typedef OptionType = ConfigurationOptionType;
typedef Option = ConfigurationOption;

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
    Symbols.contact_support,
    options: {},
  ),
  corrections(
    Symbols.draw,
    options: {},
  ),
  cefr(Symbols.abc),
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
      Option.array('channelIds', type: OptionType.string),
    },
  ),
  roleLanguages(Symbols.work),
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
  warns(Symbols.warning),
  reports(Symbols.flag),
  verification(Symbols.new_releases),
  dynamicVoiceChannels(Symbols.voice_chat),
  entry(
    Symbols.door_open,
    options: {},
  ),
  roleIndicators(Symbols.work),
  suggestions(Symbols.emoji_objects),
  resource(Symbols.book),
  tickets(Symbols.confirmation_number),
  music(
    Symbols.note,
    options: {
      Option.number('implicitVolume'),
    },
  ),
  praises(Symbols.folded_hands),
  profile(
    Symbols.person,
    options: {},
  );

  final IconData icon;
  final Set<ConfigurationOption> options;

  const Feature(this.icon, {required this.options});
}
