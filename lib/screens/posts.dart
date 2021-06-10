import 'package:ath/lists/post_list.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts',
          style: TextStyle(
              color: strawberry, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: Colors.white,
      ),
      body: PostList(),
    );
  }
}
