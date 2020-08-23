import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';

import 'audioPlayerTask.dart';

_backgroundTaskEntrypoint() {
  print('Coming inside ----- _backgroundTaskEntrypoint');

  AudioServiceBackground.run(() => AudioPlayerTask());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(child: Text("Start"), onPressed: start),
            RaisedButton(child: Text("Stop"), onPressed: stop),
            RaisedButton(child: Text("Play"), onPressed: play),
            RaisedButton(child: Text("Pause"), onPressed: pause),
          ],
        ),
      ),
    );
  }

  start() =>
      AudioService.start(backgroundTaskEntrypoint: _backgroundTaskEntrypoint);

  stop() => AudioService.stop();

  play() => AudioService.play();

  pause() => AudioService.pause();
}
