import 'package:flutter/material.dart';
import 'package:size_transition/widgets/size_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SizeTransition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SizeTransitionWidget(),
    );
  }
}
