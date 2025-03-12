import 'package:flutter/material.dart';

Padding card(AssetImage image , String text ) {
  return Padding(
    padding: const EdgeInsets.only(left: 10 , right: 10),
    child: Stack(
      children: [
        Card(
          color: Colors.white,
          child: SizedBox(height: 200, width: double.infinity),
        ),

        Padding(
          padding: const EdgeInsets.all(.0),
          child: Image(image: image,

            height: 250,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),

        Positioned(
          bottom: 70,
          left: 30,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ],
    ),
  );
}
