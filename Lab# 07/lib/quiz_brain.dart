import 'question.dart';

class QuizBrain {

  List<Question> _questionBank = [
    Question('FAX stands for First Away Xerox.', false),
    Question('Freeware is software that is available for use at no monetary cost.', true),
    Question('The hexadecimal number system contains digits from 1 - 15.', false),
    Question('Language that the computer can understand is called Machine Language.', true),
    Question('Magnetic Tape used random access method.', false),
    Question('Worms and trojan horses are easily detected and eliminated by antivirus software.', true),
    Question('CPU stands for Central Performance Unit.', false),
    Question('Dot-matrix, Deskjet, Inkjet and Laser are all types of Printers.', true),
    Question('Twitter is an online social networking and blogging service.', false),
    Question('GNU / Linux is a open source operating system.', true),
  ];

  String getQuestion(int questionNumber) {
    return _questionBank[questionNumber].question;
  }

  bool getCorrectAnswer(int questionNumber) {
    return _questionBank[questionNumber].answer;
  }
}