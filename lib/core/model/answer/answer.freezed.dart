// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  String get rightAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'sound_url')
  String get soundUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'correct_answer') String rightAnswer,
      @JsonKey(name: 'pic_url') String imageUrl,
      @JsonKey(name: 'sound_url') String soundUrl});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? answer = null,
    Object? rightAnswer = null,
    Object? imageUrl = null,
    Object? soundUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      soundUrl: null == soundUrl
          ? _value.soundUrl
          : soundUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'correct_answer') String rightAnswer,
      @JsonKey(name: 'pic_url') String imageUrl,
      @JsonKey(name: 'sound_url') String soundUrl});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? answer = null,
    Object? rightAnswer = null,
    Object? imageUrl = null,
    Object? soundUrl = null,
  }) {
    return _then(_$AnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      soundUrl: null == soundUrl
          ? _value.soundUrl
          : soundUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl implements _Answer {
  const _$AnswerImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'task_id') this.taskId = 0,
      @JsonKey(name: 'answer') this.answer = '',
      @JsonKey(name: 'correct_answer') this.rightAnswer = '',
      @JsonKey(name: 'pic_url') this.imageUrl = '',
      @JsonKey(name: 'sound_url') this.soundUrl = ''});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'task_id')
  final int taskId;
  @override
  @JsonKey(name: 'answer')
  final String answer;
  @override
  @JsonKey(name: 'correct_answer')
  final String rightAnswer;
  @override
  @JsonKey(name: 'pic_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'sound_url')
  final String soundUrl;

  @override
  String toString() {
    return 'Answer(id: $id, taskId: $taskId, answer: $answer, rightAnswer: $rightAnswer, imageUrl: $imageUrl, soundUrl: $soundUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.soundUrl, soundUrl) ||
                other.soundUrl == soundUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, taskId, answer, rightAnswer, imageUrl, soundUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'task_id') final int taskId,
      @JsonKey(name: 'answer') final String answer,
      @JsonKey(name: 'correct_answer') final String rightAnswer,
      @JsonKey(name: 'pic_url') final String imageUrl,
      @JsonKey(name: 'sound_url') final String soundUrl}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'task_id')
  int get taskId;
  @override
  @JsonKey(name: 'answer')
  String get answer;
  @override
  @JsonKey(name: 'correct_answer')
  String get rightAnswer;
  @override
  @JsonKey(name: 'pic_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'sound_url')
  String get soundUrl;
  @override
  @JsonKey(ignore: true)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
