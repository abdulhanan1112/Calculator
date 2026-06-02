import 'package:flutter/material.dart';


class PostFix {

  int preference(String a) {
    if (a == '÷' || a == 'X' || a == '%') return 2;
    if (a == '+' || a == '-') return 1;
    return 0;
  }

  bool isHigherPreference(String a, String b) {
    return preference(a) >= preference(b);
  }
  (String,int) tokenizer(String  s, int i)
  {
    String ans = "";
    while (i<s.length && s[i] != ',')
    {
      ans=ans+s[i];
      i++;
    }
    ans= ans + ',';
    return (ans,i);

  }

  double eval(String postfix) {
    List<double> stack = [];

    for (int i = 0; i < postfix.length; i++) {
      String ch = postfix[i];

      if (!isOperator(ch)) {
        var(String val,int j)=tokenizer(postfix,i);
        i=j;
        val=val.substring(0,val.length-1);
        stack.add(double.parse(val));
      } else {
        double op2 = stack.removeLast();
        double op1 = stack.removeLast();

        switch (ch) {
          case 'X':
            stack.add(op1 * op2);
            break;
          case '÷':
            stack.add(op1 / op2);
            break;
          case '+':
            stack.add(op1 + op2);
            break;
          case '-':
            stack.add(op1 - op2);
            break;
          case '%':
            stack.add(op1 % op2);
            break;
        }
      }
    }

    return stack.last;
  }
  bool isOperator(String s)
  {
    if(s=="+"||s=="-"||s=="X"||s=="÷"||s=="%")
    {
      return true;
    }
    return false;

  }
  String formatResult(double value) {
    if ((value - value.round()).abs() < 0.0000001) {
      return value.round().toString();
    } else {
      return value.toString();
    }
  }

  String postfix(String input) {
    StringBuffer output = StringBuffer();
    List<String> stack = [];

    for (int i = 0; i < input.length; i++) {
      String ch = input[i];

      if (!isOperator(ch)) {
        var(String val,int j)=tokenizer(input,i);
        output.write(val);
        i=j;
      } else {
        while (stack.isNotEmpty &&
            isHigherPreference(stack.last, ch)) {
          output.write(stack.removeLast());
        }
        stack.add(ch);
      }
    }

    while (stack.isNotEmpty) {
      output.write(stack.removeLast());
    }
    return output.toString();
  }
}

