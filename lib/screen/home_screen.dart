import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_notes/models/note.dart';
import 'package:simple_notes/models/notes_operation.dart';

import 'add_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(Icons.add, size: 30,color: Colors.blueGrey,),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: Text(
          'Task manager',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer(
        builder: (context, NotesOperation data, child) {
          return ListView.builder(
            itemCount: data.getNotes.length,
            itemBuilder: (context, index){
              return NotesCard(note: data.getNotes[index]);
            });
        },
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;

  const NotesCard({required this.note,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title
          ),
          SizedBox(height: 5,),
          Text(
            note.description,
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}