part of 'dreamvat.dart';

class Logger {
  static void debug(String message, {dynamic error, StackTrace? stackTrace, String? type}) {
    FLog.debug(text: message, exception: error, stacktrace: stackTrace, dataLogType: type);
  }

  static void info(String message, {dynamic error, StackTrace? stackTrace, String? type}) {
    FLog.info(text: message, exception: error, stacktrace: stackTrace, dataLogType: type);
  }

  static void warn(String message, {dynamic error, StackTrace? stackTrace, String? type}) {
    FLog.warning(text: message, exception: error, stacktrace: stackTrace, dataLogType: type);
  }

  static void error(String message, {dynamic error, StackTrace? stackTrace, String? type}) {
    FLog.error(text: message, exception: error, stacktrace: stackTrace, dataLogType: type);
  }

  static void fatal(String message, {dynamic error, StackTrace? stackTrace, String? type}) {
    FLog.fatal(text: message, exception: error, stacktrace: stackTrace, dataLogType: type);
  }
}
