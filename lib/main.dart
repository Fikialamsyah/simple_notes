import 'package:flutter/material.dart';
import 'package:simple_notes/models/notes_operation.dart';
import 'package:simple_notes/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotesOperation(),
        child: MaterialApp(
          home: HomeScreen(),
        ),
      );
  }
}
