import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreenProvider extends ChangeNotifier {
  String expression = "";
  String result = "";
  ScrollController scrollController = ScrollController();

  Parser p = Parser();
  ContextModel cm = ContextModel();

  void ac() {
    if (expression.isEmpty) {
      result = "";
    }
    expression = "";
    notifyListeners();
  }

  void generateExpression(String digit) {
    expression += digit;

    notifyListeners();
  }

  void calculateResult() {
    try {
      if (expression == "0-0") {
        result = "nothing";
        notifyListeners();
        return;
      }
      String expression2 =
          expression.replaceAll(RegExp('X', caseSensitive: false), "*");
      expression2 = expression2.replaceAll(RegExp("%"), "/100");
      result = p
          .parse(expression2)
          .simplify()
          .evaluate(EvaluationType.REAL, cm)
          .toString();
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
    } catch (e) {
      result = "Incorrect syntax";
    }
    notifyListeners();
  }
}
