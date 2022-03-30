import 'package:animation/sample.dart';
import 'package:flutter/material.dart';

import 'animated.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 10, 62, 233),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Animation",
                style: TextStyle(
                    color: Color.fromARGB(255, 251, 251, 250), fontSize: 35),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                padding: const EdgeInsets.all(25),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => animated()),
                  );
                },
                child: Text("Container_Transform"),
              ),
              SizedBox(
                height: 100,
              ),
              RaisedButton(
                padding: const EdgeInsets.all(25),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestingSharedAxis()),
                  );
                },
                child: Text("Testing_SharedAxis"),
              ),
            ],
          ),
        ));
  }
}
