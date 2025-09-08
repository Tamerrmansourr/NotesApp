import 'package:flutter/material.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInital extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}

class AddNoteSuccess extends AddNoteState {}
