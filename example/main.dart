import 'package:flutter/material.dart';
import 'package:unzipx/unzipx.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    String extractedPath = await UnZipX.init('assets/sample.zip');
    print("Files extracted to: $extractedPath");
  } catch (e) {
    print("Extraction failed: $e");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('UnZipX Example')),
        body: Center(child: Text('UnZipX Initialized')),
      ),
    );
  }
}
