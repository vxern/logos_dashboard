enum ConfigurationOptionType {
  string,
  boolean,
  number,
  array,
  object,
}

abstract class ConfigurationOption {
  final String name;

  const ConfigurationOption(this.name);

  const factory ConfigurationOption.string(String name) = _String;

  const factory ConfigurationOption.boolean(String name) = _Boolean;

  const factory ConfigurationOption.number(String name) = _Number;

  const factory ConfigurationOption.array(
    String name, {
    required ConfigurationOptionType type,
  }) = _Array;

  const factory ConfigurationOption.object(
    String name, {
    required Set<ConfigurationOption> options,
  }) = _Object;
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

class _Array extends ConfigurationOption {
  final ConfigurationOptionType type;

  const _Array(super.name, {required this.type});
}

class _Object extends ConfigurationOption {
  final Set<ConfigurationOption> options;

  const _Object(super.name, {required this.options});
}
