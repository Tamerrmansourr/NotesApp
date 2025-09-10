import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}
