import 'package:flutter/material.dart';
import 'package:simple_calculator/button.dart';

class calculatorApp extends StatefulWidget {
  const calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  int fnum = 0;
  int secnum = 0;
  String history = '';
  String tTodis = '';
  String res = '';
  String operations = '';

  void btnclk(String btn) {
    if (btn == 'C') {
      tTodis = "";
      fnum = 0;
      secnum = 0;
      res = '';
    } else if (btn == 'AC') {
      tTodis = '';
      fnum = 0;
      secnum = 0;
      res = '';
      history = '';
    } else if (btn == '+/-') {
      if (tTodis[0] != '-') {
        res = '-' + tTodis;
      } else {
        res = tTodis.substring(1);
      }
    } else if (btn == '<') {
      res = tTodis.substring(0, tTodis.length - 1);
    } else if (btn == '+' || btn == '-' || btn == 'X' || btn == '/') {
      fnum = int.parse(tTodis);
      res = '';
      operations = btn;
    } else if (btn == '=') {
      secnum = int.parse(tTodis);
      if (operations == '+') {
        res = (fnum + secnum).toString();
        history = fnum.toString() + operations.toString() + secnum.toString();
      }
      if (operations == '-') {
        res = (fnum - secnum).toString();
        history = fnum.toString() + operations.toString() + secnum.toString();
      }
      if (operations == 'X') {
        res = (fnum * secnum).toString();
        history = fnum.toString() + operations.toString() + secnum.toString();
      }
      if (operations == '/') {
        res = (fnum / secnum).toString();
        history = fnum.toString() + operations.toString() + secnum.toString();
      }
    } else {
      res = int.parse(tTodis + btn).toString();
    }
    setState(() {
      tTodis = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 69, 67, 67),
          title: Center(
            child: Text(
              'Calculator',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 14),
                child: Text(
                  history,
                  style: TextStyle(
                      fontSize: 29, color: Color.fromARGB(83, 255, 255, 255)),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  tTodis,
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: 'AC',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 30,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: 'C',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 30,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '<',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 40,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '/',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 35,
                    callback: btnclk,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '9',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '8',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '7',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: 'X',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 35,
                    callback: btnclk,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '6',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '5',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '4',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '-',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 65,
                    callback: btnclk,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '3',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '2',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '1',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '+',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '+/-',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 34,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '0',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 37,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '00',
                    coloury: Color.fromARGB(255, 150, 136, 14),
                    tcolour: Colors.white,
                    tsize: 35,
                    callback: btnclk,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: buttons(
                    text: '=',
                    coloury: Colors.black,
                    tcolour: Colors.white,
                    tsize: 45,
                    callback: btnclk,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
