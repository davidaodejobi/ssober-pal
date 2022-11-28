import 'package:addictionsupportroom/model/note_model.dart';
import 'package:addictionsupportroom/services/note_services.dart';
import 'package:flutter/material.dart';

class NoteProvider with ChangeNotifier {
  final _noteServices = NoteServices();
  List<Note> _noteList = [];
  List<Note> get noteList => _noteList;

  Future<void> getNotes() async {
    _noteList = await _noteServices.fetchNotes();
    notifyListeners();
  }
}
