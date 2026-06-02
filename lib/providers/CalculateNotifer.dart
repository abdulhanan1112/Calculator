import'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:calculater/providers/PostFix.dart';

final calculatorProvider=StateNotifierProvider<PostFixNotifier,String>((ref)=>PostFixNotifier());       //Notifier Provider
PostFix obj = PostFix();

class PostFixNotifier extends StateNotifier<String>            //Notifier Class
{
  String infix="";
  PostFixNotifier():super('');
  void add(String s)
  {
    if(state=='Syntax Error')
      {
        state='';
      }
    if(obj.isOperator(s))
      {
        infix+=',';
      }
    infix+=s;
    state+=s;


  }
  void remove()
  {
    state="";
    infix="";
  }
  void calculate() {
    if(state.isEmpty)
      {
        return;
      }

    String postfix = obj.postfix(infix);

    double ans = obj.eval(postfix);

    state = obj.formatResult(ans);
  }
  void back()
  {
    if(state=='Syntax Error')
    {
      state='';
    }
    if(state.isEmpty)
      {
        return;
      }
    state = state.substring(0, state.length - 1);
    if(infix.isEmpty)
      {
        return;
      }
    if(obj.isOperator(infix[infix.length-1])) {
      infix =infix.substring(0, infix.length - 2);
    }
    else
    {
      infix =infix.substring(0, infix.length - 1);
    }
  }
  void error()
  {
    state='Syntax Error';

  }





}
