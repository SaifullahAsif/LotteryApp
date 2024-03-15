import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 190, 13, 0),
          title: const Center(
            child: Text('Lottery App'),
          ),
        ),
        body: SafeArea(
          child: x==4 ? const Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('You have won the lottery'),
                Icon(Icons.check_box),
                Text('Congratulations!')
              ],
            ),
          ):const Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('The lucky number is: 4'),
                Text('Better Luck Next Time!!'),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('Pressed');
        x = random.nextInt(10);
        print(x);
        setState(() {});
      },
      backgroundColor: const Color.fromARGB(255, 190, 13, 0),
      child: const Icon(Icons.refresh), 
      ),
      ),
    );
  }
}
