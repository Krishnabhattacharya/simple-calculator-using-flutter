import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  String text;
  final coloury;
  final tcolour;
  final double tsize;
  final Function? callback;

  buttons({
    required this.text,
    required this.coloury,
    required this.tcolour,
    required this.tsize,
    this.callback,
    //required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: CircleAvatar(
          radius: 38,
          // width: 80,
          // height: 80,
          backgroundColor: coloury,
          //color: coloury,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: tcolour, fontSize: tsize),
            ),
          ),
        ),
        onTap: () {
          callback!(text);
        },
      ),
    );
  }
}
