library unzipx;

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:archive/archive.dart';

class UnZipX {
  /// Extracts a ZIP file from assets to the application support directory.
  /// Returns the path where files were extracted.
  static Future<String> init(String assetPath) async {
    try {
      final ByteData data = await rootBundle.load(assetPath);
      final List<int> bytes = data.buffer.asUint8List();
      final Archive archive = ZipDecoder().decodeBytes(Uint8List.fromList(bytes));
      final directory = await getApplicationSupportDirectory();

      for (var file in archive) {
        final fileName = file.name;
        final filePath = '${directory.path}/$fileName';

        if (file.isFile) {
          final List<int> data = file.content as List<int>;
          final File outFile = File(filePath);
          await outFile.create(recursive: true);
          await outFile.writeAsBytes(data);
        }
      }

      return directory.path;
    } catch (e) {
      throw Exception("UnZipX Error: $e");
    }
  }
}
