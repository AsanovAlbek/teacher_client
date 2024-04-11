import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_event.dart';
import 'package:teacher_client/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(): super(HomeState()) {
    on<HomeEventSetCourse>(_setCourse);
    on<HomeEventSetLesson>(_setLesson);
  }

  FutureOr<void> _setCourse(HomeEventSetCourse event, Emitter<HomeState> emit) {
    emit(state.copyWith(course: event.course));
  }

  FutureOr<void> _setLesson(HomeEventSetLesson event, Emitter<HomeState> emit) {
    emit(state.copyWith(lesson: event.lesson));
  }
}