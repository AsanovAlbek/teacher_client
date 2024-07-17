part of 'collaborators_bloc.dart';

@freezed
class CollaboratorsState with _$CollaboratorsState {
  const CollaboratorsState._();
  const factory CollaboratorsState.loading() = LoadingCollaboratorsState;
  const factory CollaboratorsState.empty() = EmptyCollaboratorsState;
  const factory CollaboratorsState.loaded({@Default(<Teacher>[])List<Teacher> collaborators }) =
      LoadedCollaboratorsState;
  const factory CollaboratorsState.error({String? message}) =
      ErrorCollaboratorsState;
}
