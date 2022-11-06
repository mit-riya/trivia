import 'package:flutter/material.dart';
import 'package:quizzler/gk_quiz.dart';
import 'package:quizzler/sports.dart';
import 'literature.dart';
import 'entertainment.dart';
import 'geography.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Trivia"),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.green,
          ),
          child: const Text(
            "General Knowlege Quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const GeneralQuiz()));
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.pink,
          ),
          child: const Text(
            "Sports Quiz",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SportsQuiz()));
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.blueAccent,
          ),
          child: const Text(
            "Entertainment Quiz",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EntertainmentQuiz()));
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.red,
          ),
          child: const Text(
            "Geography Quiz",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GeographyQuiz()));
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.cyan,
          ),
          child: const Text(
            "Language and Literature Quiz",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LiteratureQuiz()));
          },
        ),
      ],
    );
  }
}

