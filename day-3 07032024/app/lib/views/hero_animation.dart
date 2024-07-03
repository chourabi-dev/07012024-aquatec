import 'package:app/views/album_details.dart';
import 'package:flutter/material.dart';

class DemoHeroAnimation extends StatefulWidget {
  const DemoHeroAnimation({super.key});

  @override
  State<DemoHeroAnimation> createState() => _DemoHeroAnimationState();
}

class _DemoHeroAnimationState extends State<DemoHeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView(
        children: [
         
          ListTile( 
            onTap: (){

                Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
                  return AlbumDetails();
                },));

            },
            leading: 
            Hero(
              tag: 'HERO-ID',
              child: Image.network("https://www.artofdesignonline.com/uploads/1/1/7/1/117189571/03-bad_orig.jpg"),
            )
            ,
            title: Text("Tyler, The Creator - Igor"),
            subtitle: Text("2019"),
          )
        ],
      ),

    );
  }
}