import 'package:flutter/material.dart';
import 'package:unzipx/unzipx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('UnZipX Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              try {
                String extractedPath = await UnZipX.extractZipFromAssets('assets/sample.zip');
                print("Files extracted to: $extractedPath");
              } catch (e) {
                print("Extraction failed: $e");
              }
            },
            child: Text('Extract ZIP'),
          ),
        ),
      ),
    );
  }
}
