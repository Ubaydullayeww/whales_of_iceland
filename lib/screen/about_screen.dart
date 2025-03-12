import 'package:flutter/material.dart';
import 'package:imtixon/core/theme/icons.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home_filled),),
        ],
      ),
       body:ListView(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Safety' , style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.bold),),
               SizedBox(height: 5,),
               Text('instructions'),
             ],
           ),
         ],
       )
    );
  }
}
