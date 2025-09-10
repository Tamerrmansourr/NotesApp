part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitFailure extends NotesCubitState {
  final String errorMessage;
  NotesCubitFailure(this.errorMessage);
}

final class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;
  NotesCubitSuccess(this.notes);
}
