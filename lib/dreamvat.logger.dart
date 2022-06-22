part of 'dreamvat.dart';

class Logger {
  static void debug(String message, {dynamic error, StackTrace? stackTrace}) {
    FLog.debug(text: message, exception: error, stacktrace: stackTrace);
  }

  static void info(String message, {dynamic error, StackTrace? stackTrace}) {
    FLog.info(text: message, exception: error, stacktrace: stackTrace);
  }

  static void warn(String message, {dynamic error, StackTrace? stackTrace}) {
    FLog.warning(text: message, exception: error, stacktrace: stackTrace);
  }

  static void error(String message, {dynamic error, StackTrace? stackTrace}) {
    FLog.error(text: message, exception: error, stacktrace: stackTrace);
  }

  static void fatal(String message, {dynamic error, StackTrace? stackTrace}) {
    FLog.fatal(text: message, exception: error, stacktrace: stackTrace);
  }
}
