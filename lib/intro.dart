import 'package:flutter/material.dart';


class Intro extends StatelessWidget {
  const Intro(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent.shade200,
            Colors.deepPurple.shade900
          ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),

        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/image/quiz-logo.png", width: 300,),
              SizedBox(height: 50,),
              Text("Flutter Quiz App", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),

              OutlinedButton.icon(onPressed: startQuiz,

                  style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_right),
                label: Text("Start Quiz"),


              )
            ],
          ),
        ),
      ),
    );
  }
}
