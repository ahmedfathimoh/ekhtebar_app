import 'package:ekhtebar_app/custem_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PicCard extends StatelessWidget {
  String img;
  String txt;
  Function onPressedT;
  Function onPressedF;

  PicCard({
    Key key,
    @required this.img,
    @required this.txt,
    @required this.onPressedT,
    @required this.onPressedF,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(img),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  txt,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            CustemButton(color: Colors.blue, txt: 'صح', onpressed: onPressedT),
            CustemButton(color: Colors.red, txt: 'خطاء', onpressed: onPressedF),
          ],
        ),
      ),
    );
  }
}


