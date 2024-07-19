import 'package:teacher_client/core/model/teacher/teacher.dart';

abstract interface class CollaboratorsRepository {
  Future<Teacher> addCollaboratorByEmail(int courseId, String emails);
  Future<Teacher> removeCollaboratorById(int courseId, String collaboratorId);
  Future<List<Teacher>> courseCollaborators(int courseId);
  Stream<List<Teacher>> collaborators(int courseId);
}