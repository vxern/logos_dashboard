enum ConfigurationOptionType {
  string,
  boolean,
  number,
  array,
  object,
}

class ConfigurationOption {
  final String name;
  final ConfigurationOptionType type;
  final ConfigurationOptionType? modifierType;
  final Set<ConfigurationOption> options;

  const ConfigurationOption._(
    this.name,
    this.type, {
    this.modifierType,
    this.options = const {},
  });

  const ConfigurationOption.string(String name)
      : this._(name, ConfigurationOptionType.string);

  const ConfigurationOption.boolean(String name)
      : this._(name, ConfigurationOptionType.boolean);

  const ConfigurationOption.number(String name)
      : this._(name, ConfigurationOptionType.number);

  const ConfigurationOption.array(
    String name, {
    required ConfigurationOptionType type,
  }) : this._(name, ConfigurationOptionType.array, modifierType: type);

  const ConfigurationOption.object(
    String name, {
    required Set<ConfigurationOption> options,
  }) : this._(name, ConfigurationOptionType.object, options: options);
}
