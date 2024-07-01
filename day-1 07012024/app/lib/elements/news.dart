import 'package:flutter/material.dart';

class NewsBloc extends StatelessWidget {
  const NewsBloc({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(15),
     

      child: Card(
        child: Column(
        children: [

          // image 
          Container(
           child: Image.network("https://media-cldnry.s-nbcnews.com/image/upload/mpx/2704722219/2024_06/1719704524673_nn_netcast_240629_1920x1080-5lg4co.jpg"),
          ),

          Container(
            width: width,
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("News Title"),
                Text("News descreption"),

                
              ],
            ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("18 likes"),
              Text("18 comments"),
              Text("share"),
              
              ],
            ),
          )


        ],
      ),
      ),
    );
  }
}