import 'package:flutter/material.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({super.key});

  @override
  State<AlbumDetails> createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container( 
            child: 
            
            
            Hero(
              tag: 'HERO-ID',
              child: Image.network("https://www.artofdesignonline.com/uploads/1/1/7/1/117189571/03-bad_orig.jpg"),
            )
           
         
           ),

              Text("Tyler, The Creator - Igor"),
        ],
      ),
    );
  }
}