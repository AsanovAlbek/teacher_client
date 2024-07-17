part of 'collaborators_bloc.dart';

@freezed
class CollaboratorsEvent with _$CollaboratorsEvent {
  const CollaboratorsEvent._();
  const factory CollaboratorsEvent.fetchCollaborators({required int courseId}) =
      FetchCollaboratorsEvent;
  const factory CollaboratorsEvent.addCollaboratorByEmail(
      {required int courseId,
      required String email,
      Function(Teacher)? onSuccess,
      Function(String?)? onError}) = AddCollaboratorByEmailEvent;
  const factory CollaboratorsEvent.removeCollaboratorById(
      {required int courseId,
      required String collaboratorId,
      Function(Teacher)? onSuccess,
      Function(String?)? onError}) = RemoveCollaboratorByIdEvent;
}
