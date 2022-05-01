import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Quizzer Application'),
          centerTitle: true,
        ),
        body: QuizzerPage(),
      ),
    ),
  );
}

class QuizzerPage extends StatefulWidget {
  const QuizzerPage({Key? key}) : super(key: key);

  @override
  _QuizzerPageState createState() => _QuizzerPageState();
}

class _QuizzerPageState extends State<QuizzerPage> {
  List<Widget> scoreCounter = [];
  List<String> questions = [
    'Question 1: FAX stands for First Away Xerox.',
    'Question 2: Freeware is software that is available for use at no monetary cost.',
    'Question 3: The hexadecimal number system contains digits from 1 - 15.',
    'Question 4: Language that the computer can understand is called Machine Language.',
    'Question 5: Magnetic Tape used random access method.',
    'Question 6: Worms and trojan horses are easily detected and eliminated by antivirus software.',
    'Question 7: CPU stands for Central Performance Unit.',
    'Question 8: Dot-matrix, Deskjet, Inkjet and Laser are all types of Printers.',
    'Question 9: Twitter is an online social networking and blogging service.',
    'Question 10:GNU / Linux is a open source operating system.',
    'End of Quiz'
  ];
  List<bool> answers = [false, true, false, true, false, true, false, true , false, true ];
  int qno = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Container(
              //color: Colors.white,
              child: Text(
                questions[qno],
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.green),
            ),
            onPressed: () {
              setState(() {
                if (qno < questions.length - 1) {
                  if (answers[qno] == true)
                    scoreCounter.add(
                        Icon(Icons.check_box, size: 30, color: Colors.green));
                  else
                    scoreCounter
                        .add(Icon(Icons.cancel, size: 30, color: Colors.red));
                  qno++;
                }
              });
            },
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.red),
            ),
            onPressed: () {
              setState(() {
                if (qno < questions.length - 1) {
                  if (answers[qno] == false)
                    scoreCounter.add(
                        Icon(Icons.check_box, size: 30, color: Colors.green));
                  else
                    scoreCounter
                        .add(Icon(Icons.cancel, size: 30, color: Colors.red));
                  qno++;
                }
              });
            },
            child: const Text(
              'No',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(children: scoreCounter)
      ],
    );
  }
}
