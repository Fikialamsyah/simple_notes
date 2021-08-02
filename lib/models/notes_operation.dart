import 'package:flutter/material.dart';

import 'note.dart';

class NotesOperation with ChangeNotifier {
  // list of note
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('First Note', 'First Note Description');
  }
  
  void addNewNote(String title, String description){
    // Note object
    Note note = Note(title: title, description: description);
    _notes.add(note);
    notifyListeners();
  }
}