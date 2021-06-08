import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({
    Key key,
    @required this.color,
    @required this.txt,
    @required this.onpressed,
  }) : super(key: key);

  final Color color;
  final String txt;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
          ),
          child: TextButton(
            onPressed: onpressed,
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}