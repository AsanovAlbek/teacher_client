import 'package:file_picker/file_picker.dart';

class AnswerFiles {
  final int answerId;
  final FilePickerResult? imageFilePickerResult;
  final FilePickerResult? audioFilePickerResult;

  AnswerFiles(
      {required this.answerId,
      this.imageFilePickerResult,
      this.audioFilePickerResult});

  AnswerFiles copyWith(
          {int? answerId,
          FilePickerResult? imageFilePickerResult,
          FilePickerResult? audioFilePickerResult}) =>
      AnswerFiles(
          answerId: answerId ?? this.answerId,
          imageFilePickerResult:
              imageFilePickerResult ?? this.imageFilePickerResult,
          audioFilePickerResult:
              audioFilePickerResult ?? this.audioFilePickerResult);
}
