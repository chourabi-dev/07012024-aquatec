import 'package:app/views/like_button.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(


      children: [

        Container(
          child: Column(
            children: [
              Text("lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem "),
              SizedBox(height: 15,),
              LikeButton(likes: 10, isLiked: false,)
            ],
          ),
        ),



        Container(
          child: Column(
            children: [
              Text("lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem "),
              SizedBox(height: 15,),
              LikeButton(likes: 5, isLiked: true,)
            ],
          ),
        ),



        Container(
          child: Column(
            children: [
              Text("lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem "),
              SizedBox(height: 15,),
              LikeButton(likes: 9,isLiked: false,)
            ],
          ),
        ),



      ],


    ),
    );
  }
}