import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userInput.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        answer.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                            title: 'AC',
                            onPress: () {
                              userInput = '';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '+/-',
                            onPress: () {
                              userInput += '+/-';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '%',
                            onPress: () {
                              userInput += '%';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '/',
                            color: Colors.orange,
                            onPress: () {
                              userInput += '/';
                              answer = '';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: '7',
                            onPress: () {
                              userInput += '7';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '8',
                            onPress: () {
                              userInput += '8';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '9',
                            onPress: () {
                              userInput += '9';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: 'x',
                            color: Colors.orange,
                            onPress: () {
                              userInput += 'x';
                              answer = '';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: '4',
                            onPress: () {
                              userInput += '4';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '5',
                            onPress: () {
                              userInput += '5';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '6',
                            onPress: () {
                              userInput += '6';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '-',
                            color: Colors.orange,
                            onPress: () {
                              userInput += '-';
                              answer = '';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: '1',
                            onPress: () {
                              userInput += '1';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '2',
                            onPress: () {
                              userInput += '2';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '3',
                            onPress: () {
                              userInput += '3';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '+',
                            color: Colors.orange,
                            onPress: () {
                              userInput += '+';
                              answer = '';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: '0',
                            onPress: () {
                              userInput += '0';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: '.',
                            onPress: () {
                              userInput += '.';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(
                            title: 'DEL',
                            onPress: () {
                              userInput = userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            }),
                        MyButton(
                            title: '=',
                            color: Colors.orange,
                            onPress: () {
                              equalPress();
                              setState(() {});
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 void equalPress(){

    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
