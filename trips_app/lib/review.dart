import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "asset/img/image1.png";
  String name = "Daniel Tirado";
  String details = "1 Review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
        margin: EdgeInsets.only(
        left: 20.0
    ),
    child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
        fontSize: 13.0,
        fontFamily: "Lato",
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final username = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        username,
        userInfo,
        userComment
      ],

    );


    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}