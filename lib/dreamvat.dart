library dreamvat;

import 'package:flutter/foundation.dart';
// import 'package:f_logs/f_logs.dart';
// import 'package:uuid/uuid.dart';

part 'dreamvat.extensions.dart';
part 'dreamvat.status_monitor.dart';
// part 'dreamvat.logger.dart';

class Dreamvat {
  Dreamvat._();
  static Future<void> init() async {
    // 日志
    // final config = FLog.getDefaultConfigurations()
    //   ..activeLogLevel = LogLevel.ALL
    //   ..isDevelopmentDebuggingEnabled = true
    //   ..timestampFormat = TimestampFormat.TIME_FORMAT_FULL_3
    //   ..formatType = FormatType.FORMAT_CUSTOM
    //   ..fieldOrderFormatCustom = [
    //     FieldName.TIMESTAMP,
    //     // FieldName.LOG_LEVEL,
    //     // FieldName.CLASSNAME,
    //     FieldName.METHOD_NAME,
    //     FieldName.TEXT,
    //     FieldName.EXCEPTION,
    //     FieldName.STACKTRACE,
    //   ]
    //   ..customOpeningDivider = "["
    //   ..customClosingDivider = "]";

    // FLog.applyConfigurations(config);
  }

  // 生成Guid
  static const msgSuccess = "";
  static const emptyGuid = "00000000000000000000000000000000";
  // static const _uuid = Uuid();
  // static String newGuid() {
  //   // return _uuid.v5(Uuid.NAMESPACE_URL, _uuidNS).replaceAll("-", "");
  //   return _uuid.v4().replaceAll("-", "");
  // }

  // 当前UTC时间毫秒
  static int utcNowMS() => DateTime.now().toUtc().millisecondsSinceEpoch;

  /// 计算Hash
  static int fastHash(String string) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }
}
