

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateCommunitySuccess extends StatelessWidget {

  String communityName;

  CreateCommunitySuccess({super.key, required this.communityName});

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Community $communityName created successfully'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back to Home'),
            )
          ],
        ),
      ),
    );
  }
}