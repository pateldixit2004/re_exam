import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/screen/provider/quiz_provider.dart';
import 'package:re_exam/screen/view/home_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuizProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
        },
      ),
    )
  );
}