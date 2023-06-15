import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/screen/model/quiz_model.dart';
import 'package:re_exam/screen/provider/quiz_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  QuizProvider? providerF;
  QuizProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<QuizProvider>(context, listen: false);
    providerT = Provider.of<QuizProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0a1a42),
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Color(0xffbe1e1e),
        ),
        body: Center(
          child: FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                } else if (snapshot.hasData) {
                  QuizModel? quizModel = snapshot.data;
                  // return ListView.builder(itemBuilder: (context, index) {
                  //   return Column(
                  //     children: [
                  //       Container(
                  //         height: 50,
                  //         width: double.infinity,
                  //         child: Center(child: Text(' ${quizModel.results![providerT!.i].question}'),),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           if(quizModel.results![index].correctAnswer==false)
                  //             {
                  //               print('no');
                  //             }
                  //           else
                  //             {
                  //               print('yes');
                  //
                  //             }
                  //         },
                  //         child: Container(
                  //           color: Colors.amber,
                  //           child:Text('A ${quizModel.results![providerT!.i].correctAnswer}'),
                  //         ),
                  //       ),
                  //       Visibility(child: Text('ysdk'),visible: quizModel.results![providerT!.i].correctAnswer==false?true:false),
                  //       Container(
                  //         color: Colors.red,
                  //         child:Text('B ${quizModel.results![providerT!.i].incorrectAnswers![0]}'),
                  //       ),
                  //
                  //       Container(
                  //         color: Colors.green,
                  //         child:Text('C ${quizModel.results![providerT!.i].incorrectAnswers![1]}'),
                  //       ),
                  //       Container(
                  //         color: Colors.blue,
                  //         child:Text('D ${quizModel.results![providerT!.i].incorrectAnswers![2]}'),
                  //       ),
                  //     ],
                  //   );
                  // },itemCount: quizModel!.results!.length ,
                  //
                  // );
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: Text('${providerT!.i}' ' ${quizModel!.results![providerT!.i].question}',
                                style: TextStyle(color: Color(0xfff8f2f2)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        InkWell(
                          onTap: () {
                            // if(quizModel.results![providerT!.i].correctAnswer==false)
                            // {
                            //   print('no');
                            // }
                            // else
                            // {
                            //   print('yes');
                            //
                            // }
                            providerT!.changeI();
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width:double.infinity,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xfff8f2f2),

                                  ),
                                  child: Center(
                                    child: Text(
                                        'A ${quizModel.results![providerT!.i].correctAnswer}',style: TextStyle(color: Color(0xff000000))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            providerT!.changeI();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width:double.infinity,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xfff8f2f2),

                              ),
                              child: Center(
                                child: Text(
                                    'B ${quizModel.results![providerT!.i].incorrectAnswers![0]}',style: TextStyle(color: Color(0xff000000)),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            providerT!.changeI();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width:double.infinity,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xfff8f2f2),

                              ),
                              child: Center(
                                child: Text(
                                    'C ${quizModel.results![providerT!.i].incorrectAnswers![1]}',style: TextStyle(color: Color(0xff000000))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            providerT!.changeI();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width:double.infinity,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xfff8f2f2),

                              ),
                              child: Center(
                                child: Text(
                                    'D ${quizModel.results![providerT!.i].incorrectAnswers![2]}',style: TextStyle(color: Color(0xff000000))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        // Visibility(
                        //   visible: providerT!.j,
                        //     child: InkWell(
                        //      onTap: () {
                        //        providerF!.restartQuiz(0);
                        //      },
                        //       child: Container(
                        //   child: Text('hyy'),
                        // ),
                        //     )
                        // )
                      ],
                    ),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              future: providerF!.takeApi()),
        ),
      ),
    );
  }
}
