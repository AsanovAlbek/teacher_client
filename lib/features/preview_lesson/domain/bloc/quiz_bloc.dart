import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/core/model/lesson/lesson.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/preview_lesson/view/game/fill_word_question.dart';
import 'package:teacher_client/features/preview_lesson/view/game/first_type_question_widget.dart';
import 'package:teacher_client/features/preview_lesson/view/game/make_sentence_question_widget.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';
import 'package:teacher_client/features/preview_lesson/view/game/three_words_question_widget.dart';
import 'package:teacher_client/features/preview_lesson/view/game/type_missing_word_question.dart';
import 'package:teacher_client/features/preview_lesson/view/game/type_question.dart';

part 'quiz_event.dart';

part 'quiz_state.dart';

part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(const QuizState.loading()) {
    on<LoadingEvent>((event, emit) => _loadLesson(event, emit));
    on<NextQuestion>((event, emit) => _nextQuestion(event, emit));
    on<GetAnswer>((event, emit) => _getAnswer(event, emit));
  }

  QuizStateLoaded get _quizState => state as QuizStateLoaded;
  Question question() =>
      _quizState.questionWidgets[_quizState.selectedIndex] as Question;


  Widget _pagesFactory(Task task) {
    switch (task.taskType) {
      case 1:
        return FirstTypeQuestionPreview(
            questionTitle: task.task, answers: task.taskAnswers);
      case 2:
        return ThreeWordsQuestionPreview(
          answers: task.taskAnswers,
          questionTitle: task.task,
        );
      case 3:
        return TypeQuestionPreview(task: task);
      case 4:
        return MakeSentenceQuestionPreview(task: task);
      case 7:
        return FillWordsQuestionPreview(task: task, answers: task.taskAnswers);
      case 8:
        return TypeMissingWordQuestionPreview(
            task: task, answer: task.taskAnswers.first);
      default:
        return const Text('Unknown question type');
    }
  }

  _loadLesson(LoadingEvent event, Emitter<QuizState> emit) async {
    try {
      final tasks = event.tasks;
      if (tasks.isNotEmpty) {
        emit(QuizState.loaded(
            selectedIndex: 0,
            tasks: tasks,
            questionWidgets: tasks.map((task) => _pagesFactory(task)).toList(),
            currentQuestion: _pagesFactory(tasks.first) as Question,
            isTrial: event.isTrial));
      } else {
        event.ifLessonEmpty();
      }

      log(_quizState.currentQuestion!.toString());
    } catch (e, stack) {
      log('err $e', stackTrace: stack);
      emit(const QuizState.error(message: "Нет подключения к интернету"));
    }
    log(state.toString());
  }

  _nextQuestion(NextQuestion event, Emitter<QuizState> emit) {
    if (_quizState.selectedIndex < _quizState.tasks.length - 1) {
      emit(_quizState.copyWith(
          selectedIndex: _quizState.selectedIndex + 1,
          currentQuestion: _quizState
              .questionWidgets[_quizState.selectedIndex + 1] as Question,
          isDialogShow: false));
      _quizState.currentQuestion?.clear();
    } else {
      if (_quizState.isTrial) {
        emit(_quizState.copyWith(endTrialFlag: true, isDialogShow: false));
      } else {
        emit(_quizState.copyWith(isDialogShow: false));
        event.onFinish();
        emit(QuizState.loaded(
            selectedIndex: 0,
            currentQuestion:
                _pagesFactory(_quizState.tasks.first) as Question));
      }
    }
  }

  _getAnswer(GetAnswer event, Emitter<QuizState> emit) {
    if (!question().isSelected()) {
      // Пользователь не дал ответ
      // Показать ему сообщение, чтобы он его дал
    } else {
      emit(_quizState.copyWith(
        // Показываем диалог
        currentQuestion: question(),
        isDialogShow: true,
      ));
      event.onAnswer?.call(_quizState.currentQuestion);
      // Далее такая логика
      if (question().isRight()) {
        final coinsForOneQuestion = 100 / _quizState.tasks.length;
        emit(_quizState.copyWith(
            coins: _quizState.coins + coinsForOneQuestion.toInt()));
      } else {
        emit(_quizState.copyWith(
            health: _quizState.health - 10,
            mistakesCounter: _quizState.mistakesCounter + 1,
            totalMistakes: _quizState.totalMistakes + 1));
        if (_quizState.mistakesCounter >= 3) {
          Talker().debug('Вы совершили 3 ошибки');
          emit(_quizState.copyWith(mistakesCounter: 0));
        }
        if (_quizState.health <= 0) {
          Talker().debug('Вы проиграли');
        }
      }
    }
  }
}
