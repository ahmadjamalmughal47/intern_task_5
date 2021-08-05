import 'package:flutter/material.dart';
import 'package:intern_task_5/widgets/icons_with_count.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1485470733090-0aae1788d5af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.call),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                Dialog(child: Text("Some simple dialog")),
                          );
                        },
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(Icons.near_me),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("YES")),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("NO")),
                              ],
                              content: Text("would you like to blah?"),
                              title: Text("Please read"),
                            ),
                          );
                        },
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          showModalBottomSheet(
                            builder: (BuildContext context) {
                              return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconWithCount(),
                                    IconWithCount(),
                                    IconWithCount(),
                                    IconWithCount(),
                                  ]);
                            },
                            context: context,
                          );
                        },
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Text(
                    "Some long text. Some long text. Some long text. Some long text. Some long text.Some long text.Some long text.Some long text.",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
