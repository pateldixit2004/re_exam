import 'package:flutter/foundation.dart';
import 'package:re_exam/screen/model/quiz_model.dart';
import 'package:re_exam/utils/api_helper.dart';

class QuizProvider extends ChangeNotifier
{
  Future<QuizModel> takeApi()
  async {
    QuizModel quizModel=await Apihelper.apihelper.getApi();
    return quizModel;
  }
  List<QuizModel> list=[


  ];
  int i=1;
  bool j=false;
  void changeI()
  {
    if(i<9)
      {
        i++;
      }
    else
      {
        j=true;
      }
    notifyListeners();
  }
  void restartQuiz(int value)
  {
    i=value;
    j=false;
    notifyListeners();
  }
}