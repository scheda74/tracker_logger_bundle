enum LogLevel {
  debug('[DEBUG]'),
  info('[INFO]'),
  warning('[WARN]'),
  exception('[EXCEPTION]'),
  error('[ERROR]');

  final String name;

  const LogLevel(this.name);

  @override
  String toString() => name;
}
