enum OptionType {
  string,
  boolean,
  number,
}

abstract class Option {
  final String name;

  const Option(this.name);

  const factory Option.string(String name) = _String;

  const factory Option.boolean(String name) = _Boolean;

  const factory Option.number(String name) = _Number;

  const factory Option.multiple(
    String name, {
    required Option option,
  }) = _Multiple;

  const factory Option.complex(
    String name, {
    required Set<Option> options,
  }) = _Complex;

  const factory Option.map(
    String name, {
    required MapEntry<OptionType, OptionType> entries,
  }) = _Map;

  const factory Option.timeStruct(String name) = _TimeStruct;

  const factory Option.rateLimit(String name) = _RateLimit;

  const factory Option.management(String name) = _Management;

  const factory Option.verdictRequirement(String name) = _VerdictRequirement;

  const factory Option.cefrLevels(String name) = _CefrLevels;
}

class _String extends Option {
  const _String(super.name);
}

class _Boolean extends Option {
  const _Boolean(super.name);
}

class _Number extends Option {
  const _Number(super.name);
}

class _Multiple extends Option {
  final Option option;

  const _Multiple(super.name, {required this.option});
}

class _Complex extends Option {
  final Set<Option> options;

  const _Complex(super.name, {required this.options});
}

class _Map extends Option {
  final MapEntry<OptionType, OptionType> entries;

  const _Map(super.name, {required this.entries});
}

class _TimeStruct extends Option {
  const _TimeStruct(super.name);
}

class _RateLimit extends Option {
  const _RateLimit(super.name);
}

class _Management extends Option {
  const _Management(super.name);
}

class _VerdictRequirement extends Option {
  const _VerdictRequirement(super.name);
}

class _CefrLevels extends Option {
  const _CefrLevels(super.name);
}
