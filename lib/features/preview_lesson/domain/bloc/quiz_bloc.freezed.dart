// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson, List<Task> tasks,
            Function ifLessonEmpty, bool isTrial)
        loading,
    required TResult Function() endTrial,
    required TResult Function(dynamic Function(Question?)? onAnswer) getAnswer,
    required TResult Function(VoidCallback onFinish) nextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult? Function()? endTrial,
    TResult? Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult? Function(VoidCallback onFinish)? nextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult Function()? endTrial,
    TResult Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult Function(VoidCallback onFinish)? nextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(EndTrial value) endTrial,
    required TResult Function(GetAnswer value) getAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(EndTrial value)? endTrial,
    TResult? Function(GetAnswer value)? getAnswer,
    TResult? Function(NextQuestion value)? nextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingEvent value)? loading,
    TResult Function(EndTrial value)? endTrial,
    TResult Function(GetAnswer value)? getAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingEventImplCopyWith<$Res> {
  factory _$$LoadingEventImplCopyWith(
          _$LoadingEventImpl value, $Res Function(_$LoadingEventImpl) then) =
      __$$LoadingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Lesson lesson, List<Task> tasks, Function ifLessonEmpty, bool isTrial});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$$LoadingEventImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$LoadingEventImpl>
    implements _$$LoadingEventImplCopyWith<$Res> {
  __$$LoadingEventImplCopyWithImpl(
      _$LoadingEventImpl _value, $Res Function(_$LoadingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? tasks = null,
    Object? ifLessonEmpty = null,
    Object? isTrial = null,
  }) {
    return _then(_$LoadingEventImpl(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      ifLessonEmpty: null == ifLessonEmpty
          ? _value.ifLessonEmpty
          : ifLessonEmpty // ignore: cast_nullable_to_non_nullable
              as Function,
      isTrial: null == isTrial
          ? _value.isTrial
          : isTrial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

/// @nodoc

class _$LoadingEventImpl extends LoadingEvent {
  const _$LoadingEventImpl(
      {required this.lesson,
      required final List<Task> tasks,
      required this.ifLessonEmpty,
      required this.isTrial})
      : _tasks = tasks,
        super._();

  @override
  final Lesson lesson;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Function ifLessonEmpty;
  @override
  final bool isTrial;

  @override
  String toString() {
    return 'QuizEvent.loading(lesson: $lesson, tasks: $tasks, ifLessonEmpty: $ifLessonEmpty, isTrial: $isTrial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.ifLessonEmpty, ifLessonEmpty) ||
                other.ifLessonEmpty == ifLessonEmpty) &&
            (identical(other.isTrial, isTrial) || other.isTrial == isTrial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson,
      const DeepCollectionEquality().hash(_tasks), ifLessonEmpty, isTrial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingEventImplCopyWith<_$LoadingEventImpl> get copyWith =>
      __$$LoadingEventImplCopyWithImpl<_$LoadingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson, List<Task> tasks,
            Function ifLessonEmpty, bool isTrial)
        loading,
    required TResult Function() endTrial,
    required TResult Function(dynamic Function(Question?)? onAnswer) getAnswer,
    required TResult Function(VoidCallback onFinish) nextQuestion,
  }) {
    return loading(lesson, tasks, ifLessonEmpty, isTrial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult? Function()? endTrial,
    TResult? Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult? Function(VoidCallback onFinish)? nextQuestion,
  }) {
    return loading?.call(lesson, tasks, ifLessonEmpty, isTrial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult Function()? endTrial,
    TResult Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult Function(VoidCallback onFinish)? nextQuestion,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(lesson, tasks, ifLessonEmpty, isTrial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(EndTrial value) endTrial,
    required TResult Function(GetAnswer value) getAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(EndTrial value)? endTrial,
    TResult? Function(GetAnswer value)? getAnswer,
    TResult? Function(NextQuestion value)? nextQuestion,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingEvent value)? loading,
    TResult Function(EndTrial value)? endTrial,
    TResult Function(GetAnswer value)? getAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingEvent extends QuizEvent {
  const factory LoadingEvent(
      {required final Lesson lesson,
      required final List<Task> tasks,
      required final Function ifLessonEmpty,
      required final bool isTrial}) = _$LoadingEventImpl;
  const LoadingEvent._() : super._();

  Lesson get lesson;
  List<Task> get tasks;
  Function get ifLessonEmpty;
  bool get isTrial;
  @JsonKey(ignore: true)
  _$$LoadingEventImplCopyWith<_$LoadingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndTrialImplCopyWith<$Res> {
  factory _$$EndTrialImplCopyWith(
          _$EndTrialImpl value, $Res Function(_$EndTrialImpl) then) =
      __$$EndTrialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndTrialImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$EndTrialImpl>
    implements _$$EndTrialImplCopyWith<$Res> {
  __$$EndTrialImplCopyWithImpl(
      _$EndTrialImpl _value, $Res Function(_$EndTrialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndTrialImpl extends EndTrial {
  const _$EndTrialImpl() : super._();

  @override
  String toString() {
    return 'QuizEvent.endTrial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndTrialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson, List<Task> tasks,
            Function ifLessonEmpty, bool isTrial)
        loading,
    required TResult Function() endTrial,
    required TResult Function(dynamic Function(Question?)? onAnswer) getAnswer,
    required TResult Function(VoidCallback onFinish) nextQuestion,
  }) {
    return endTrial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult? Function()? endTrial,
    TResult? Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult? Function(VoidCallback onFinish)? nextQuestion,
  }) {
    return endTrial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult Function()? endTrial,
    TResult Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult Function(VoidCallback onFinish)? nextQuestion,
    required TResult orElse(),
  }) {
    if (endTrial != null) {
      return endTrial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(EndTrial value) endTrial,
    required TResult Function(GetAnswer value) getAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
  }) {
    return endTrial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(EndTrial value)? endTrial,
    TResult? Function(GetAnswer value)? getAnswer,
    TResult? Function(NextQuestion value)? nextQuestion,
  }) {
    return endTrial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingEvent value)? loading,
    TResult Function(EndTrial value)? endTrial,
    TResult Function(GetAnswer value)? getAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    required TResult orElse(),
  }) {
    if (endTrial != null) {
      return endTrial(this);
    }
    return orElse();
  }
}

abstract class EndTrial extends QuizEvent {
  const factory EndTrial() = _$EndTrialImpl;
  const EndTrial._() : super._();
}

/// @nodoc
abstract class _$$GetAnswerImplCopyWith<$Res> {
  factory _$$GetAnswerImplCopyWith(
          _$GetAnswerImpl value, $Res Function(_$GetAnswerImpl) then) =
      __$$GetAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function(Question?)? onAnswer});
}

/// @nodoc
class __$$GetAnswerImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$GetAnswerImpl>
    implements _$$GetAnswerImplCopyWith<$Res> {
  __$$GetAnswerImplCopyWithImpl(
      _$GetAnswerImpl _value, $Res Function(_$GetAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onAnswer = freezed,
  }) {
    return _then(_$GetAnswerImpl(
      onAnswer: freezed == onAnswer
          ? _value.onAnswer
          : onAnswer // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Question?)?,
    ));
  }
}

/// @nodoc

class _$GetAnswerImpl extends GetAnswer {
  const _$GetAnswerImpl({this.onAnswer}) : super._();

  @override
  final dynamic Function(Question?)? onAnswer;

  @override
  String toString() {
    return 'QuizEvent.getAnswer(onAnswer: $onAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAnswerImpl &&
            (identical(other.onAnswer, onAnswer) ||
                other.onAnswer == onAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAnswerImplCopyWith<_$GetAnswerImpl> get copyWith =>
      __$$GetAnswerImplCopyWithImpl<_$GetAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson, List<Task> tasks,
            Function ifLessonEmpty, bool isTrial)
        loading,
    required TResult Function() endTrial,
    required TResult Function(dynamic Function(Question?)? onAnswer) getAnswer,
    required TResult Function(VoidCallback onFinish) nextQuestion,
  }) {
    return getAnswer(onAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult? Function()? endTrial,
    TResult? Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult? Function(VoidCallback onFinish)? nextQuestion,
  }) {
    return getAnswer?.call(onAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult Function()? endTrial,
    TResult Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult Function(VoidCallback onFinish)? nextQuestion,
    required TResult orElse(),
  }) {
    if (getAnswer != null) {
      return getAnswer(onAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(EndTrial value) endTrial,
    required TResult Function(GetAnswer value) getAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
  }) {
    return getAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(EndTrial value)? endTrial,
    TResult? Function(GetAnswer value)? getAnswer,
    TResult? Function(NextQuestion value)? nextQuestion,
  }) {
    return getAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingEvent value)? loading,
    TResult Function(EndTrial value)? endTrial,
    TResult Function(GetAnswer value)? getAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    required TResult orElse(),
  }) {
    if (getAnswer != null) {
      return getAnswer(this);
    }
    return orElse();
  }
}

abstract class GetAnswer extends QuizEvent {
  const factory GetAnswer({final dynamic Function(Question?)? onAnswer}) =
      _$GetAnswerImpl;
  const GetAnswer._() : super._();

  dynamic Function(Question?)? get onAnswer;
  @JsonKey(ignore: true)
  _$$GetAnswerImplCopyWith<_$GetAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextQuestionImplCopyWith<$Res> {
  factory _$$NextQuestionImplCopyWith(
          _$NextQuestionImpl value, $Res Function(_$NextQuestionImpl) then) =
      __$$NextQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback onFinish});
}

/// @nodoc
class __$$NextQuestionImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$NextQuestionImpl>
    implements _$$NextQuestionImplCopyWith<$Res> {
  __$$NextQuestionImplCopyWithImpl(
      _$NextQuestionImpl _value, $Res Function(_$NextQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onFinish = null,
  }) {
    return _then(_$NextQuestionImpl(
      onFinish: null == onFinish
          ? _value.onFinish
          : onFinish // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$NextQuestionImpl extends NextQuestion {
  const _$NextQuestionImpl({required this.onFinish}) : super._();

  @override
  final VoidCallback onFinish;

  @override
  String toString() {
    return 'QuizEvent.nextQuestion(onFinish: $onFinish)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextQuestionImpl &&
            (identical(other.onFinish, onFinish) ||
                other.onFinish == onFinish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onFinish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextQuestionImplCopyWith<_$NextQuestionImpl> get copyWith =>
      __$$NextQuestionImplCopyWithImpl<_$NextQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lesson lesson, List<Task> tasks,
            Function ifLessonEmpty, bool isTrial)
        loading,
    required TResult Function() endTrial,
    required TResult Function(dynamic Function(Question?)? onAnswer) getAnswer,
    required TResult Function(VoidCallback onFinish) nextQuestion,
  }) {
    return nextQuestion(onFinish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult? Function()? endTrial,
    TResult? Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult? Function(VoidCallback onFinish)? nextQuestion,
  }) {
    return nextQuestion?.call(onFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lesson lesson, List<Task> tasks, Function ifLessonEmpty,
            bool isTrial)?
        loading,
    TResult Function()? endTrial,
    TResult Function(dynamic Function(Question?)? onAnswer)? getAnswer,
    TResult Function(VoidCallback onFinish)? nextQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(onFinish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(EndTrial value) endTrial,
    required TResult Function(GetAnswer value) getAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(EndTrial value)? endTrial,
    TResult? Function(GetAnswer value)? getAnswer,
    TResult? Function(NextQuestion value)? nextQuestion,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingEvent value)? loading,
    TResult Function(EndTrial value)? endTrial,
    TResult Function(GetAnswer value)? getAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class NextQuestion extends QuizEvent {
  const factory NextQuestion({required final VoidCallback onFinish}) =
      _$NextQuestionImpl;
  const NextQuestion._() : super._();

  VoidCallback get onFinish;
  @JsonKey(ignore: true)
  _$$NextQuestionImplCopyWith<_$NextQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStateLoading value) loading,
    required TResult Function(QuizStateLoaded value) loaded,
    required TResult Function(QuizStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStateLoading value)? loading,
    TResult? Function(QuizStateLoaded value)? loaded,
    TResult? Function(QuizStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStateLoading value)? loading,
    TResult Function(QuizStateLoaded value)? loaded,
    TResult Function(QuizStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizStateLoadingImplCopyWith<$Res> {
  factory _$$QuizStateLoadingImplCopyWith(_$QuizStateLoadingImpl value,
          $Res Function(_$QuizStateLoadingImpl) then) =
      __$$QuizStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizStateLoadingImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateLoadingImpl>
    implements _$$QuizStateLoadingImplCopyWith<$Res> {
  __$$QuizStateLoadingImplCopyWithImpl(_$QuizStateLoadingImpl _value,
      $Res Function(_$QuizStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizStateLoadingImpl extends QuizStateLoading {
  const _$QuizStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'QuizState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStateLoading value) loading,
    required TResult Function(QuizStateLoaded value) loaded,
    required TResult Function(QuizStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStateLoading value)? loading,
    TResult? Function(QuizStateLoaded value)? loaded,
    TResult? Function(QuizStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStateLoading value)? loading,
    TResult Function(QuizStateLoaded value)? loaded,
    TResult Function(QuizStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuizStateLoading extends QuizState {
  const factory QuizStateLoading() = _$QuizStateLoadingImpl;
  const QuizStateLoading._() : super._();
}

/// @nodoc
abstract class _$$QuizStateLoadedImplCopyWith<$Res> {
  factory _$$QuizStateLoadedImplCopyWith(_$QuizStateLoadedImpl value,
          $Res Function(_$QuizStateLoadedImpl) then) =
      __$$QuizStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int selectedIndex,
      List<Task> tasks,
      List<Widget> questionWidgets,
      Question? currentQuestion,
      bool isTrial,
      bool endTrialFlag,
      bool isDialogShow,
      String userAnswer,
      String rightAnswer,
      int mistakesCounter,
      int totalMistakes,
      bool canSkipTask});
}

/// @nodoc
class __$$QuizStateLoadedImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateLoadedImpl>
    implements _$$QuizStateLoadedImplCopyWith<$Res> {
  __$$QuizStateLoadedImplCopyWithImpl(
      _$QuizStateLoadedImpl _value, $Res Function(_$QuizStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? tasks = null,
    Object? questionWidgets = null,
    Object? currentQuestion = freezed,
    Object? isTrial = null,
    Object? endTrialFlag = null,
    Object? isDialogShow = null,
    Object? userAnswer = null,
    Object? rightAnswer = null,
    Object? mistakesCounter = null,
    Object? totalMistakes = null,
    Object? canSkipTask = null,
  }) {
    return _then(_$QuizStateLoadedImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      questionWidgets: null == questionWidgets
          ? _value._questionWidgets
          : questionWidgets // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      currentQuestion: freezed == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question?,
      isTrial: null == isTrial
          ? _value.isTrial
          : isTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      endTrialFlag: null == endTrialFlag
          ? _value.endTrialFlag
          : endTrialFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      isDialogShow: null == isDialogShow
          ? _value.isDialogShow
          : isDialogShow // ignore: cast_nullable_to_non_nullable
              as bool,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      mistakesCounter: null == mistakesCounter
          ? _value.mistakesCounter
          : mistakesCounter // ignore: cast_nullable_to_non_nullable
              as int,
      totalMistakes: null == totalMistakes
          ? _value.totalMistakes
          : totalMistakes // ignore: cast_nullable_to_non_nullable
              as int,
      canSkipTask: null == canSkipTask
          ? _value.canSkipTask
          : canSkipTask // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuizStateLoadedImpl extends QuizStateLoaded {
  const _$QuizStateLoadedImpl(
      {this.selectedIndex = 0,
      final List<Task> tasks = const [],
      final List<Widget> questionWidgets = const <Widget>[],
      this.currentQuestion,
      this.isTrial = true,
      this.endTrialFlag = false,
      this.isDialogShow = false,
      this.userAnswer = "",
      this.rightAnswer = "",
      this.mistakesCounter = 0,
      this.totalMistakes = 0,
      this.canSkipTask = false})
      : _tasks = tasks,
        _questionWidgets = questionWidgets,
        super._();

  @override
  @JsonKey()
  final int selectedIndex;
  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<Widget> _questionWidgets;
  @override
  @JsonKey()
  List<Widget> get questionWidgets {
    if (_questionWidgets is EqualUnmodifiableListView) return _questionWidgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionWidgets);
  }

  @override
  final Question? currentQuestion;
  @override
  @JsonKey()
  final bool isTrial;
  @override
  @JsonKey()
  final bool endTrialFlag;
  @override
  @JsonKey()
  final bool isDialogShow;
  @override
  @JsonKey()
  final String userAnswer;
  @override
  @JsonKey()
  final String rightAnswer;
  @override
  @JsonKey()
  final int mistakesCounter;
  @override
  @JsonKey()
  final int totalMistakes;
  @override
  @JsonKey()
  final bool canSkipTask;

  @override
  String toString() {
    return 'QuizState.loaded(selectedIndex: $selectedIndex, tasks: $tasks, questionWidgets: $questionWidgets, currentQuestion: $currentQuestion, isTrial: $isTrial, endTrialFlag: $endTrialFlag, isDialogShow: $isDialogShow, userAnswer: $userAnswer, rightAnswer: $rightAnswer, mistakesCounter: $mistakesCounter, totalMistakes: $totalMistakes, canSkipTask: $canSkipTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateLoadedImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._questionWidgets, _questionWidgets) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.isTrial, isTrial) || other.isTrial == isTrial) &&
            (identical(other.endTrialFlag, endTrialFlag) ||
                other.endTrialFlag == endTrialFlag) &&
            (identical(other.isDialogShow, isDialogShow) ||
                other.isDialogShow == isDialogShow) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.mistakesCounter, mistakesCounter) ||
                other.mistakesCounter == mistakesCounter) &&
            (identical(other.totalMistakes, totalMistakes) ||
                other.totalMistakes == totalMistakes) &&
            (identical(other.canSkipTask, canSkipTask) ||
                other.canSkipTask == canSkipTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedIndex,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_questionWidgets),
      currentQuestion,
      isTrial,
      endTrialFlag,
      isDialogShow,
      userAnswer,
      rightAnswer,
      mistakesCounter,
      totalMistakes,
      canSkipTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateLoadedImplCopyWith<_$QuizStateLoadedImpl> get copyWith =>
      __$$QuizStateLoadedImplCopyWithImpl<_$QuizStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        selectedIndex,
        tasks,
        questionWidgets,
        currentQuestion,
        isTrial,
        endTrialFlag,
        isDialogShow,
        userAnswer,
        rightAnswer,
        mistakesCounter,
        totalMistakes,
        canSkipTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        selectedIndex,
        tasks,
        questionWidgets,
        currentQuestion,
        isTrial,
        endTrialFlag,
        isDialogShow,
        userAnswer,
        rightAnswer,
        mistakesCounter,
        totalMistakes,
        canSkipTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          selectedIndex,
          tasks,
          questionWidgets,
          currentQuestion,
          isTrial,
          endTrialFlag,
          isDialogShow,
          userAnswer,
          rightAnswer,
          mistakesCounter,
          totalMistakes,
          canSkipTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStateLoading value) loading,
    required TResult Function(QuizStateLoaded value) loaded,
    required TResult Function(QuizStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStateLoading value)? loading,
    TResult? Function(QuizStateLoaded value)? loaded,
    TResult? Function(QuizStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStateLoading value)? loading,
    TResult Function(QuizStateLoaded value)? loaded,
    TResult Function(QuizStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class QuizStateLoaded extends QuizState {
  const factory QuizStateLoaded(
      {final int selectedIndex,
      final List<Task> tasks,
      final List<Widget> questionWidgets,
      final Question? currentQuestion,
      final bool isTrial,
      final bool endTrialFlag,
      final bool isDialogShow,
      final String userAnswer,
      final String rightAnswer,
      final int mistakesCounter,
      final int totalMistakes,
      final bool canSkipTask}) = _$QuizStateLoadedImpl;
  const QuizStateLoaded._() : super._();

  int get selectedIndex;
  List<Task> get tasks;
  List<Widget> get questionWidgets;
  Question? get currentQuestion;
  bool get isTrial;
  bool get endTrialFlag;
  bool get isDialogShow;
  String get userAnswer;
  String get rightAnswer;
  int get mistakesCounter;
  int get totalMistakes;
  bool get canSkipTask;
  @JsonKey(ignore: true)
  _$$QuizStateLoadedImplCopyWith<_$QuizStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizStateErrorImplCopyWith<$Res> {
  factory _$$QuizStateErrorImplCopyWith(_$QuizStateErrorImpl value,
          $Res Function(_$QuizStateErrorImpl) then) =
      __$$QuizStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuizStateErrorImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateErrorImpl>
    implements _$$QuizStateErrorImplCopyWith<$Res> {
  __$$QuizStateErrorImplCopyWithImpl(
      _$QuizStateErrorImpl _value, $Res Function(_$QuizStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QuizStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuizStateErrorImpl extends QuizStateError {
  const _$QuizStateErrorImpl({this.message = ""}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'QuizState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateErrorImplCopyWith<_$QuizStateErrorImpl> get copyWith =>
      __$$QuizStateErrorImplCopyWithImpl<_$QuizStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int selectedIndex,
            List<Task> tasks,
            List<Widget> questionWidgets,
            Question? currentQuestion,
            bool isTrial,
            bool endTrialFlag,
            bool isDialogShow,
            String userAnswer,
            String rightAnswer,
            int mistakesCounter,
            int totalMistakes,
            bool canSkipTask)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStateLoading value) loading,
    required TResult Function(QuizStateLoaded value) loaded,
    required TResult Function(QuizStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStateLoading value)? loading,
    TResult? Function(QuizStateLoaded value)? loaded,
    TResult? Function(QuizStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStateLoading value)? loading,
    TResult Function(QuizStateLoaded value)? loaded,
    TResult Function(QuizStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuizStateError extends QuizState {
  const factory QuizStateError({final String message}) = _$QuizStateErrorImpl;
  const QuizStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$QuizStateErrorImplCopyWith<_$QuizStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
