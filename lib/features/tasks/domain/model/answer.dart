import 'package:file_picker/file_picker.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/model/answer/answer.dart';

class AnswerModel with EquatableMixin {
  final Answer answer;
  final FilePickerResult? imageFilePickerResult;
  final FilePickerResult? audioFilePickerResult;

  AnswerModel(
      {this.answer = const Answer(),
      this.imageFilePickerResult,
      this.audioFilePickerResult});

  AnswerModel copyWith(
      {Answer? answer,
      FilePickerResult? imageFilePickerResult,
      FilePickerResult? audioFilePickerResult}) {
    return AnswerModel(
        answer: answer ?? this.answer,
        imageFilePickerResult:
            imageFilePickerResult ?? this.imageFilePickerResult,
        audioFilePickerResult:
            audioFilePickerResult ?? this.audioFilePickerResult);
  }

  @override
  List<Object?> get props => [answer, imageFilePickerResult, audioFilePickerResult];

  @override
  bool? get stringify => true;
}
