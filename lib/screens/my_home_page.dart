import 'package:flutter/material.dart';
import 'package:intern_task_5/widgets/icons_with_count.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1485470733090-0aae1788d5af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
              fit: BoxFit.contain,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("blah blah blah",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text("blah blah blah")
                      ]),
                ),
                IconWithCount()
              ],
            )
          ],
        ),
      ),
    );
  }
}
