enum ConfigurationOptionType {
  string,
  boolean,
  number,
}

abstract class ConfigurationOption {
  final String name;

  const ConfigurationOption(this.name);

  const factory ConfigurationOption.string(String name) = _String;

  const factory ConfigurationOption.boolean(String name) = _Boolean;

  const factory ConfigurationOption.number(String name) = _Number;

  const factory ConfigurationOption.multiple(
    String name, {
    required ConfigurationOption option,
  }) = _Multiple;

  const factory ConfigurationOption.complex(
    String name, {
    required Set<ConfigurationOption> options,
  }) = _Complex;

  const factory ConfigurationOption.group(
    String name, {
    required Set<ConfigurationOption> options,
  }) = _Group;

  const factory ConfigurationOption.map(
    String name, {
    required MapEntry<ConfigurationOptionType, ConfigurationOptionType> entries,
  }) = _Map;

  const factory ConfigurationOption.timeStruct(String name) = _TimeStruct;

  const factory ConfigurationOption.rateLimit(String name) = _RateLimit;

  const factory ConfigurationOption.management(String name) = _Management;

  const factory ConfigurationOption.verdictRequirement(String name) =
      _VerdictRequirement;

  const factory ConfigurationOption.cefrLevels(String name) = _CefrLevels;
}

class _String extends ConfigurationOption {
  const _String(super.name);
}

class _Boolean extends ConfigurationOption {
  const _Boolean(super.name);
}

class _Number extends ConfigurationOption {
  const _Number(super.name);
}

class _Multiple extends ConfigurationOption {
  final ConfigurationOption option;

  const _Multiple(super.name, {required this.option});
}

class _Complex extends ConfigurationOption {
  final Set<ConfigurationOption> options;

  const _Complex(super.name, {required this.options});
}

class _Group extends ConfigurationOption {
  final Set<ConfigurationOption> options;

  const _Group(super.name, {required this.options});
}

class _Map extends ConfigurationOption {
  final MapEntry<ConfigurationOptionType, ConfigurationOptionType> entries;

  const _Map(super.name, {required this.entries});
}

class _TimeStruct extends ConfigurationOption {
  const _TimeStruct(super.name);
}

class _RateLimit extends ConfigurationOption {
  const _RateLimit(super.name);
}

class _Management extends ConfigurationOption {
  const _Management(super.name);
}

class _VerdictRequirement extends ConfigurationOption {
  const _VerdictRequirement(super.name);
}

class _CefrLevels extends ConfigurationOption {
  const _CefrLevels(super.name);
}
