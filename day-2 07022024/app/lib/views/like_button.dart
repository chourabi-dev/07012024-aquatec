import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final bool isLiked;
  final int likes;

  const LikeButton({super.key, required this.isLiked, required this.likes});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}



class _LikeButtonState extends State<LikeButton> {

  int _likes = 0;
  bool _isLiked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _likes = widget.likes;
    _isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton( onPressed: (){
        setState(() {
          _isLiked = !_isLiked;
          _likes = _isLiked ? (_likes + 1 ): (_likes - 1);
        });
      }, child: Text('$_likes  ${ _isLiked == false ? 'Like':'Dislike' } '), ),
    );
  }
}