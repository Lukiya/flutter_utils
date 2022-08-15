import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:dreamvat/dreamvat.dart';

Future<Uint8List> compress(Map<String, dynamic> args) async {
  final srcPath = args["srcPath"];
  final tmpPath = args["tmpPath"];

  try {
    var encoder = ZipFileEncoder(); // 压缩器
    encoder.create(tmpPath); // 创建压缩文件
    encoder.addFile(File(srcPath)); // 添加数据库文件进zip文件
    encoder.close(); // 关闭压缩器

    final zipFile = File(tmpPath); // zip文件
    final r = await zipFile.readAsBytes(); // 读取压缩文件数据
    await zipFile.delete(); // 删除zip文件
    return r;
  } catch (err) {
    Logger.error("Compress db failed", error: err, stackTrace: StackTrace.current);
  }

  return Uint8List(0);
}

Future<void> decompress(Map<String, dynamic> args) async {
  final data = args["data"];
  final tarPath = args["tarPath"];

  try {
    // 是压缩文件
    final archive = ZipDecoder().decodeBytes(data); // 解压缩
    final zipFile = archive.first; // 获取第一个文件
    final targetFile = File(tarPath);
    await targetFile.writeAsBytes(zipFile.content); // 写入数据库文件
  } catch (err) {
    Logger.error("Decompress db failed", error: err, stackTrace: StackTrace.current);
  }
}
