import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/repository/image_upload_repository.dart';
import 'package:uuid/uuid.dart';

class ImageUploadRepositoryImpl implements ImageUploadRepository {
  final SupabaseClient _client;

  ImageUploadRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<String> uploadImage(String bucketName, FilePickerResult pickerResult,
      [String? path]) async {
    final imageFile = pickerResult.files.single;
    final uuidName = const Uuid().v4();
    await _client.storage.from(bucketName).uploadBinary(
        path ?? '$uuidName.${imageFile.extension}', imageFile.bytes!);
    return '${_client.storage.from(bucketName).getPublicUrl(uuidName)}.${imageFile.extension}';
  }
}
