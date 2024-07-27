enum OptionType {
  string,
  boolean,
  number,
}

sealed class Option {
  final String name;

  const Option(this.name);

  const factory Option.string(String name) = StringOption;

  const factory Option.boolean(String name) = BooleanOption;

  const factory Option.number(String name) = NumberOption;

  const factory Option.multiple(
    String name, {
    required Option option,
  }) = MultipleOption;

  const factory Option.complex(
    String name, {
    required Set<Option> options,
  }) = ComplexOption;

  const factory Option.map(
    String name, {
    required MapEntry<OptionType, OptionType> entries,
  }) = MapOption;

  const factory Option.timeStruct(String name) = TimeStructOption;

  const factory Option.rateLimit(String name) = RateLimitOption;

  const factory Option.management(String name) = ManagementOption;

  const factory Option.verdictRequirement(String name) =
      VerdictRequirementOption;

  const factory Option.cefrLevels(String name) = CefrLevelsOption;
}

class StringOption extends Option {
  const StringOption(super.name);
}

class BooleanOption extends Option {
  const BooleanOption(super.name);
}

class NumberOption extends Option {
  const NumberOption(super.name);
}

class MultipleOption extends Option {
  final Option option;

  const MultipleOption(super.name, {required this.option});
}

class ComplexOption extends Option {
  final Set<Option> options;

  const ComplexOption(super.name, {required this.options});
}

class MapOption extends Option {
  final MapEntry<OptionType, OptionType> entries;

  const MapOption(super.name, {required this.entries});
}

class TimeStructOption extends Option {
  const TimeStructOption(super.name);
}

class RateLimitOption extends Option {
  const RateLimitOption(super.name);
}

class ManagementOption extends Option {
  const ManagementOption(super.name);
}

class VerdictRequirementOption extends Option {
  const VerdictRequirementOption(super.name);
}

class CefrLevelsOption extends Option {
  const CefrLevelsOption(super.name);
}
