import 'package:flutter/material.dart';

class IconWithCount extends StatefulWidget {
  @override
  _IconWithCountState createState() => _IconWithCountState();
}

class _IconWithCountState extends State<IconWithCount> {
  int currentCount = 1;
  bool isLiked = true;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      isLiked
          ? IconButton(
              color: Colors.red,
              icon: Icon(Icons.star),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                  currentCount--;
                });
              },
            )
          : IconButton(
              color: Colors.red,
              icon: Icon(Icons.star_outline),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                  currentCount++;
                });
              },
            ),
      Text(currentCount.toString())
    ]);
  }
}
