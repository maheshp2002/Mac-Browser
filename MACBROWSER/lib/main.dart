import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/tabs.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyHomePage(),
            ),
          ),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {

    return Container(
        color: Colors.black,
        alignment: Alignment.center,
        child:Image.asset('assets/images/Logo.png'),




    );

  }

}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      title: 'MAC BROWSER',

      home: MyTabs(),


    );

  }
}