import 'log_level.dart';

abstract class Plugin {
  final String name;

  const Plugin({required this.name});

  /// logs a generic event
  void logEvent(
    String name, {
    String? category,
    String? action,
    int? value,
    LogLevel level = LogLevel.info,
  });

  /// logs an error event
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  });
}
