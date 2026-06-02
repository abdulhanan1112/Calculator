import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:calculater/providers/CalculateNotifer.dart';
class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Calculater'),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Consumer(builder: (context,ref,child)
                  {
                    final input=ref.watch(calculatorProvider);
                    return Text( input.isEmpty?'0':input,style: TextStyle(color: Colors.white, fontSize: 70),);
                  }
              ),
        )
            ),
            Divider(height: 1.0, thickness: 2, color: Colors.grey[200]),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).back();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[600],
                              ),
                              child: Text(
                                'D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).remove();

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[600],
                              ),
                              child: Text(
                                'C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('%');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                               ref.read(calculatorProvider.notifier).add('X');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                'X',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('7');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('8');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '8',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('9');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '9',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('÷');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '÷',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('4');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('5');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('6');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '6',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('-');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('1');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('2');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('3');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('+');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('0');

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(calculatorProvider.notifier).add('.');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                try {

                                  ref.read(calculatorProvider.notifier).calculate();
                                }
                                catch(e) {
                                  ref.read(calculatorProvider.notifier).error();

                                }

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '=',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}