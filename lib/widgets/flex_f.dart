import 'package:flutter/material.dart';
import 'package:flutter_internship/models/shapes.dart';

class FlexF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //1
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.purple,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Square(
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        //2
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.purple,
              ),
            ),
            SizedBox(width: 16),
            Square(
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        //3
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Rectangle(
              height: 100,
              width: 192,
              color: Colors.purple,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Square(
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 16),
            Rectangle(
              height: 100,
              width: 192,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        //4
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Rectangle(
                    height: 100,
                    width: 192,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Square(
                    size: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Square(
                    size: 100,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        //5
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.purple,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Square(
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: Rectangle(
                height: 100,
                width: 192,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
