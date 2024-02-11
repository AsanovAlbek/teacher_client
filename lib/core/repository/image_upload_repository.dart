import 'package:file_picker/file_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/course.dart';

abstract interface class ImageUploadRepository {
  /// Добавляет картинку, полученную в [pickerResult] в [Bucket] c указанным [bucketName]
  /// Так же даёт название файлу через [path]. Если он не указан, то он генерируется самостоятельно.
  /// Возвращает url загруженного файла
  Future<String> uploadImage(String bucketName, FilePickerResult pickerResult,
      [String? path]);
}
