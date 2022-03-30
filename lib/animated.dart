import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class animated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Transform"),
        backgroundColor: Color.fromARGB(255, 32, 63, 236),
      ),
      body: Container(
          child: Center(
        child: Text("Click the plus icon to see animation",
            style: TextStyle(fontSize: 25)),
      )),
      floatingActionButton: OpenContainer(
          transitionDuration: Duration(milliseconds: 2000),
          closedBuilder: (_, openContainer) {
            return FloatingActionButton(
              elevation: 0.0,
              onPressed: openContainer,
              backgroundColor: Color.fromARGB(255, 32, 63, 236),
              child: Icon(Icons.add, color: Colors.white),
            );
          },
          openColor: Color.fromARGB(255, 32, 63, 236),
          closedElevation: 15.0,
          closedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          closedColor: Color.fromARGB(255, 32, 63, 236),
          openBuilder: (_, closeContainer) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 32, 63, 236),
                title: Text("Details"),
                leading: IconButton(
                  onPressed: closeContainer,
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              body: (GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 3,
                    crossAxisSpacing: 12,
                  ),
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(index.toString()),
                    );
                  })),
            );
          }),
    );
  }
}
