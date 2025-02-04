import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class FileConvertor {
  static Future<File> bytesToFile(
      {required Uint8List bytes,
      required String fileName,
      String extension = "jpg"}) async {
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/$fileName.$extension').create();
    file.writeAsBytesSync(bytes);
    return file;
  }
}
