import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerTask extends BackgroundAudioTask {
  final _audioPlayer = AudioPlayer();

  @override
  Future<void> onStart(Map<String, dynamic> params) async {
    print('Coming in AudioPlayerTask');
    // Connect to the URL
    await _audioPlayer
        .setUrl("https://a11.streamgb.com/proxy/radioxl?mp=/stream");
    // Now we're ready to play
    _audioPlayer.play();
    AudioServiceBackground.setMediaItem(id:'your-id-goes-here',title:'title',album:'album');
    AudioServiceBackground.setState(....);
  }

  @override
  Future<void> onStop() async {
    // Stop playing audio
    await _audioPlayer.stop();
    // Shut down this background task
    await super.onStop();
  }

  @override
  Future<void> onPlay() {
    _audioPlayer.play();
    AudioServiceBackground.setState(....);
  }

  @override
  Future<void> onPause() {
    _audioPlayer.pause();
    AudioServiceBackground.setState(....);
  }
}
