import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/first.dart';
import './presentation/home.dart';
import './presentation/addNote.dart';
import './presentation/SpecificNote.dart';
import 'package:firebase_core/firebase_core.dart';
import './buisnesslogic/notesCubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<NotesCubit>(
          create: (context) => NotesCubit(), child: first()),
      routes: {
        home.id: (context) => home(),
        addnote.id: (context) => addnote(),
        specificNote.id: (context) => specificNote(),
        first.id: (context) => first(),
      },
    );
  }
}
