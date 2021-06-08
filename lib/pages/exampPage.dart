import 'package:ekhtebar_app/app_print.dart';
import 'package:ekhtebar_app/pic_card.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ExampPage extends StatefulWidget {
  @override
  _ExampPageState createState() => _ExampPageState();
}

class _ExampPageState extends State<ExampPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 25.0,
          ),
          child: Row(
            children: anserResult,
          ),
        ),
        PicCard(
          img: appPrint.getQuestionImage(),
          txt: appPrint.getQuestiontext(),
          onPressedT: onPressedT,
          onPressedF: onPressedF,
        ),
      ],
    );
  }

  void checkAnswor(bool userAnswor) {
    bool correctAnser = appPrint.getQuestionAnswor();
    setState(() {
      if (userAnswor == correctAnser) {
        trueAnswor++;
        anserResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        anserResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
      }
      if (appPrint.isFinsh() == true) {
        Alert(
          context: context,
          title: 'أنهاء ألاختبار',
          desc: 'لقد أجبت على $trueAnswor أسئلة صحيحة من 4 أسئلة',
          buttons: [
            DialogButton(
              child: Text(
                'ابداء من جديد',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                trueAnswor = 0;
              },
              width: 120.0,
            ),
          ],
        ).show();
        appPrint.reset();
        anserResult = [];
      } else {
        appPrint.nextQuestion();
      }
    });
  }

  onPressedT() {
    checkAnswor(true);
  }

  onPressedF() {
    checkAnswor(false);
  }
}

AppPrint appPrint = AppPrint();

List<Widget> anserResult = [];
int trueAnswor = 0;
