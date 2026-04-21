import 'package:flutter/material.dart';
import 'package:modelhandler/screen/chat_screen.dart';
import 'package:modelhandler/screen/login_screen.dart';
import 'package:modelhandler/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lnhowdzkkanusytzrokl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxuaG93ZHpra2FudXN5dHpyb2tsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI0ODk5OTYsImV4cCI6MjA4ODA2NTk5Nn0.43RuK-iYKFagc46-OIsUAnP_S6iXXArQfdeotoH_FU8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ChatPage(username: 'User'),
      debugShowCheckedModeBanner: false,
    );
  }
}
