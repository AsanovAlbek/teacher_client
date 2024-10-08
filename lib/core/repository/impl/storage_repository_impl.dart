import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/repository/storage_repository.dart';
import 'package:intl/intl.dart';
import 'package:teacher_client/core/utils/utils.dart';

class StorageRepositoryImpl implements StorageRepository {
  final SupabaseClient _client;

  StorageRepositoryImpl(SupabaseClient client) : _client = client;

  @override
  Future<String> uploadFile(String bucketName, FilePickerResult pickerResult,
      {int sizeLimitForMb = 10}) async {
    var fileName = '---';
    try {
      final file = pickerResult.files.single;
      if (!AppUtils.checkFileMemoryLimit(
          fileBytesSize: file.size,
          limit: sizeLimitForMb,
          memoryLimitType: MemoryLimitType.mb)) {
        throw Exception('Слишком большой размер файла');
      }
      final dateString =
          DateFormat('dd.MM.yyyy_hh:mm:ss').format(DateTime.now());
      final ext = file.extension;
      final newFileName = '${file.name..replaceAll(ext!, '')}_$dateString.$ext';
      await _client.storage
          .from(bucketName)
          .uploadBinary(newFileName, file.bytes!);
      fileName = _client.storage.from(bucketName).getPublicUrl(newFileName);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }

    return fileName;
  }

  @override
  Future<String> updateFile(
      String bucketName, FilePickerResult pickerResult, String fileUrl,
      {int sizeLimitForMb = 10}) async {
    final newFile = pickerResult.files.single;
    if (!AppUtils.checkFileMemoryLimit(
        fileBytesSize: newFile.size,
        limit: sizeLimitForMb,
        memoryLimitType: MemoryLimitType.mb)) {
      throw Exception('Слишком большой размер файла');
    }
    var oldFileNameFromUrl = fileUrl
        .replaceFirst('${_client.storage.url}/object/public/$bucketName/', '')
        .trim();
    oldFileNameFromUrl = 'public/$oldFileNameFromUrl';
    debugPrint('file url $fileUrl');
    final allFiles = await _client.storage.from(bucketName).list();
    debugPrint(
        'all files = ${allFiles.map((e) => '${e.bucketId}/${e.owner}/${e.name}').toList()}');
    if (newFile.bytes case final bytes?) {
      return _client.storage.from(bucketName).updateBinary(fileUrl, bytes);
    }
    return '';
  }
}
