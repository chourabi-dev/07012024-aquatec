import 'package:app/elements/news.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          NewsBloc(),
          NewsBloc(),
          NewsBloc(),
          NewsBloc(),
          NewsBloc(),
          
        ],
      ),
    );
  }
}