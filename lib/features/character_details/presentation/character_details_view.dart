import 'package:flutter/material.dart';

class CharacterDetailsView extends StatelessWidget {
  const CharacterDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Details'),
      ),
      body: Center(
        child: Text('Character Details'),
      ),
    );
  }
}
