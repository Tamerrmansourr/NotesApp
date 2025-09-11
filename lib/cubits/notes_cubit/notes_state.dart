import 'package:flutter/material.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {}
