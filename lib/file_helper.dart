import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileHelper {
  Future<File> writeFile(String path, String content) async {
    final file = File(path);

    // Menuliskan konten ke dalam berkas.
    print('Saved to $path');
    return file.writeAsString('$content');
  }

  Future<String> readFile(String filePath) async {
    try {
      final file = File(filePath);

      // Membaca berkas sebagai sebuah string.
      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      // Jika terjadi error, mencetak pesan error ke konsol dan mengembalikan teks kosong.
      print(e);
      return '';
    }
  }

  Future<String> getFilePath(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    final prefix = directory.path;
    final absolutePath = '$prefix/$fileName.txt';
    return absolutePath;
  }
}
