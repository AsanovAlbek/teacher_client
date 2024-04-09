import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:intl/intl.dart';
import 'package:web/helpers.dart';

class StorageRepositoryImpl implements StorageRepository {
  final SupabaseClient _client;

  StorageRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<String> uploadFile(String bucketName, FilePickerResult pickerResult) async {
    final file = pickerResult.files.single;
    debugPrint("""storage url ${_client.storage.url}
     bucket_url ${_client.storage.from(bucketName).url}
     bucket_id ${_client.storage.from(bucketName).bucketId}
     name ${file.name}""");
    final dateString = DateFormat('dd.MM.yyyy_hh:mm:ss').format(DateTime.now());
    final newFileName = '${file.name}_$dateString';
    await _client.storage.from(bucketName).uploadBinary(newFileName, file.bytes!);
    return '${_client.storage.from(bucketName).getPublicUrl(newFileName)}.${file.extension}';
  }

  @override
  Future<String> updateFile(String bucketName, FilePickerResult pickerResult, String fileUrl) async {
    final newFile = pickerResult.files.single;
    var oldFileNameFromUrl = fileUrl.replaceFirst('${_client.storage.url}/object/public/$bucketName/', '').trim();
    oldFileNameFromUrl = 'public/$oldFileNameFromUrl';
    debugPrint('file url $fileUrl');
    final allFiles = await _client.storage.from(bucketName).list();
    debugPrint('all files = ${allFiles.map((e) => '${e.bucketId}/${e.owner}/${e.name}').toList()}');
    if (newFile.bytes case final bytes?) {
      return _client.storage.from(bucketName).updateBinary(fileUrl, bytes);
    }
    return '';
  }
}
