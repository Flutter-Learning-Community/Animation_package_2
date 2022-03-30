import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class TestingSharedAxis extends StatefulWidget {
  @override
  _TestingSharedAxisState createState() => _TestingSharedAxisState();
}

class _TestingSharedAxisState extends State<TestingSharedAxis> {
  bool _onFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 62, 233),
      appBar: AppBar(
        title: Text("TestingSharedAxis"),
        backgroundColor: Color.fromARGB(255, 10, 62, 233),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                      padding: const EdgeInsets.all(20),
                      onPressed: _onFirstPage == true
                          ? null
                          : () {
                              setState(() {
                                _onFirstPage = true;
                              });
                            },
                      child: Text(
                        "First Page",
                        style: TextStyle(
                            color: _onFirstPage == true
                                ? Color.fromARGB(255, 219, 214, 214)
                                    .withOpacity(0.5)
                                : Color.fromARGB(255, 15, 15, 15)),
                      )),
                  Column(
                    children: [
                      RaisedButton(
                          padding: const EdgeInsets.all(20),
                          onPressed: _onFirstPage == false
                              ? null
                              : () {
                                  setState(() {
                                    _onFirstPage = false;
                                  });
                                },
                          child: Text(
                            "Second Page",
                            style: TextStyle(
                                color: _onFirstPage == true
                                    ? Color.fromARGB(255, 7, 7, 7)
                                        .withOpacity(0.5)
                                    : Color.fromARGB(255, 15, 15, 15)),
                          )),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: PageTransitionSwitcher(
                duration: const Duration(milliseconds: 3000),
                reverse: !_onFirstPage,
                transitionBuilder: (Widget child, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return SharedAxisTransition(
                    child: child,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.horizontal,
                  );
                },
                child: _onFirstPage
                    ? Container(
                        key: UniqueKey(),
                        color: Color.fromARGB(255, 10, 62, 233),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "FIRST PAGE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 251, 251, 250),
                                fontSize: 35),
                          ),
                        ),
                      )
                    : Container(
                        key: UniqueKey(),
                        color: Color.fromARGB(255, 236, 89, 4),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "SECOND PAGE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 251, 251, 250),
                                fontSize: 35),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
