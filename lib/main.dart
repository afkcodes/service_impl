import 'package:flutter/material.dart';
import 'package:audio_service/audio_service.dart';

import 'Home.dart';

void main() {
  runApp(AudioImpl());
}

class AudioImpl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AudioServiceWidget(
        child: MainScreen(),
      ),
    );
  }
}
