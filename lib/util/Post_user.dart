import 'package:flutter/material.dart';

class PostUser extends StatelessWidget {
  final String postUser;
  const PostUser({super.key, required this.postUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          postUser,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
