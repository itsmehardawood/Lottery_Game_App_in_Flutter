import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text(
            'Lottery App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                'Welcome to ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                'Lottery Application',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 80,
              ),
              Text(
                'Lottery Winning Number is ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '9',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:40,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: x==9 ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_all,
                        color: Colors.green,
                        size: 50,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Congratulation ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
                      ),
                      Text(
                        'You are the Winner with winning number of $x',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ],
                  ):Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        color: Colors.red.shade800,
                        size: 35,
                      ),
                      Text(
                        'Better Luck Next Time your number is $x try again',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: x==9? Colors.red:Colors.green ,
          onPressed: () {
            x=random.nextInt(10);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh,),
        ),
      ),
    );
  }
}
