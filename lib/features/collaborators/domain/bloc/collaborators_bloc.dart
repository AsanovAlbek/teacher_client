import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/core/model/teacher/teacher.dart';
import 'package:teacher_client/features/collaborators/domain/repository/collaborators_repository.dart';

part 'collaborators_state.dart';
part 'collaborators_event.dart';
part 'collaborators_bloc.freezed.dart';

class CollaboratorsBloc extends Bloc<CollaboratorsEvent, CollaboratorsState> {
  final CollaboratorsRepository collaboratorsRepository;
  CollaboratorsBloc(this.collaboratorsRepository)
      : super(const CollaboratorsState.loading()) {
    on<FetchCollaboratorsEvent>(_fetchCollaborators);
    on<AddCollaboratorByEmailEvent>(_addCollaboratorByEmail);
    on<RemoveCollaboratorByIdEvent>(_removeCollaboratorById);
    on<FetchCollaboratorsAsStreamEvent>(_fetchCollaboratorsAsStream,
        transformer: restartable());
  }

  LoadedCollaboratorsState _loaded = const LoadedCollaboratorsState();

  FutureOr<void> _fetchCollaborators(
      FetchCollaboratorsEvent event, Emitter<CollaboratorsState> emit) async {
    try {
      final collaborators =
          await collaboratorsRepository.courseCollaborators(event.courseId);
      if (collaborators.isEmpty) {
        emit(const CollaboratorsState.empty());
      } else {
        _loaded = _loaded.copyWith(collaborators: collaborators);
        emit(_loaded);
      }
    } on Exception catch (e, s) {
      emit(CollaboratorsState.error(message: e.toString()));
      Talker().handle(e, s, 'Error when fetch collaborators');
    }
  }

  FutureOr<void> _addCollaboratorByEmail(AddCollaboratorByEmailEvent event,
      Emitter<CollaboratorsState> emit) async {
    try {
      final teacher = await collaboratorsRepository.addCollaboratorByEmail(
          event.courseId, event.email);
      event.onSuccess?.call(teacher);
    } on Exception catch (e, s) {
      Talker().handle(e, s, 'Error when add collaborator by email');
      event.onError?.call(e.toString());
    }
  }

  FutureOr<void> _removeCollaboratorById(RemoveCollaboratorByIdEvent event,
      Emitter<CollaboratorsState> emit) async {
    try {
      final teacher = await collaboratorsRepository.removeCollaboratorById(
          event.courseId, event.collaboratorId);
      event.onSuccess?.call(teacher);
    } on Exception catch (e, s) {
      Talker().handle(e, s, 'Error when remove collaborator by id');
      event.onError?.call(e.toString());
    }
  }

  FutureOr<void> _fetchCollaboratorsAsStream(
      FetchCollaboratorsAsStreamEvent event,
      Emitter<CollaboratorsState> emit) async {
    emit.forEach(collaboratorsRepository.collaborators(event.courseId),
        onData: (collaborators) {
        if (collaborators.isEmpty) {
          return const CollaboratorsState.empty();
        } else {
          _loaded = _loaded.copyWith(collaborators: collaborators);
          return _loaded;
        }
    }, onError: (error, stackTrace) {
      Talker().handle(error, stackTrace, 'error stream collaborators');
      return CollaboratorsState.error(message: error.toString());
    }
    );
  }
}
