---

# **UnZipX Example App 🚀**

**Pub Version:** [![Pub](https://img.shields.io/pub/v/unzipx)](https://pub.dev/packages/unzipx)  
**License:** MIT  
**Platform:** Android | iOS | Windows | macOS | Linux

The **UnZipX Example App** demonstrates how to easily extract ZIP files from assets and save them to the app's support directory. With just **one line of code**, you can load and extract ZIP files in your Flutter app! 🗂✨

---

## ✨ Features

✅ **Extract ZIP from Assets** – No need to manually copy files.  
✅ **Automatic File Saving** – Extracted files are stored in the support directory.  
✅ **Works in `void main()`** – Easy to initialize before running the app.  
✅ **Cross-Platform Support** – Works on **Android, iOS, Windows, macOS, and Linux**.  
✅ **Simple & Lightweight** – Uses `archive` and `path_provider` with minimal dependencies.

---

## 📦 Installation

### **Step 1: Add Dependency**
Add **UnZipX** to your `pubspec.yaml`:

```yaml
dependencies:
  unzipx: ^1.0.0
```

Run the following command:

```sh
flutter pub get
```

---

## 🚀 Getting Started

### **Step 2: Import UnZipX**

```dart
import 'package:unzipx/unzipx.dart';
```

---

### **Step 3: Extract ZIP in `void main()`**

Modify your `main.dart` to extract a ZIP file on app startup:

```dart
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

  runApp(UnZipXExampleApp());
}

class UnZipXExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('UnZipX Example')),
        body: Center(child: Text('Files Extracted Successfully!')),
      ),
    );
  }
}
```

---

## 🎨 Extracting ZIP Anywhere

Want to extract a ZIP later in the app lifecycle? Use this function:

```dart
void extractFiles() async {
  try {
    String extractedPath = await UnZipX.init('assets/data.zip');
    print("Extracted to: $extractedPath");
  } catch (e) {
    print("Extraction failed: $e");
  }
}
```

---

## 📂 How It Works?

1️⃣ Loads a ZIP file from `assets/`  
2️⃣ Extracts all files into the **app support directory**  
3️⃣ Returns the **extracted folder path**

---

## 📌 File Structure Example

If `assets/sample.zip` contains:

```
sample.zip
 ├── config.json
 ├── images/
 │   ├── image1.png
 │   ├── image2.png
 ├── data.txt
```

After extraction, the files will be saved in:

```
/data/user/0/com.example.app/files/  (Android example path)
 ├── config.json
 ├── images/
 │   ├── image1.png
 │   ├── image2.png
 ├── data.txt
```

---

## 🔧 Setup for Assets

Make sure you declare the ZIP file in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/sample.zip
```

---

## 🌟 Common Use Cases

### 1️⃣ **Extract ZIP at App Startup**

Extract files **before** the app UI loads:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UnZipX.init('assets/sample.zip');
  runApp(MyApp());
}
```

### 2️⃣ **Extract ZIP on Button Press**

Extract files **on demand** with a button:

```dart
ElevatedButton(
  onPressed: () async {
    await UnZipX.init('assets/docs.zip');
  },
  child: Text("Extract ZIP"),
);
```

---

## 💡 Common Issues & Solutions

| Issue | Solution |
|--------|------------|
| *FileNotFoundException* | Ensure the ZIP file is added in `pubspec.yaml`. |
| *Permission Denied* | On Android, check **storage permissions** in `AndroidManifest.xml`. |
| *Slow Extraction* | Use smaller ZIP files or reduce the number of files inside. |

---

## 🔗 More Resources

📖 **Flutter Documentation**: [flutter.dev](https://flutter.dev)  
📦 **UnZipX on Pub.dev**: [pub.dev/packages/unzipx](https://pub.dev/packages/unzipx)

---

## 👤 **Author**

**Chinmay Nagar** – *Flutter Developer & Tech Enthusiast*

🔗 **Portfolio**: [chinmaynagar-dev.web.app](https://chinmaynagar-dev.web.app/)  
💼 **LinkedIn**: [chinmay-nagar-55786424b](https://www.linkedin.com/in/chinmay-nagar-55786424b/)  
📧 **Email**: [nagar.chinmay.7@gmail.com](mailto:nagar.chinmay.7@gmail.com)

---

Now your Flutter app can extract ZIP files effortlessly using **UnZipX**! 🚀  
Drop a ⭐ if you like this package! ❤️

---