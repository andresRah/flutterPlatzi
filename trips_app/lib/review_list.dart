import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget
{
    @override
    Widget build(BuildContext context) {

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review("assets/img/image1.png", "Daniel Tirado", "1 Review 5 photos","Like pleace"),
          Review("assets/img/image1.png", "Daniel Tirado", "1 Review 5 photos","Like pleace"),
          Review("assets/img/image1.png", "Daniel Tirado", "1 Review 5 photos","Like pleace")
        ],
      );
    }
}