import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

const double _normalSpeed = 1.0;
const double _slowSpeed = 0.5;

typedef FutureCallback = Future<void> Function();

class PickableAudio extends StatefulWidget {
  final FutureCallback? onPickAudioFile;
  final String? audioUrl;
  final FilePickerResult? audioFilePickerResult;

  const PickableAudio(
      {super.key,
      this.onPickAudioFile,
      this.audioUrl,
      this.audioFilePickerResult});

  @override
  State<StatefulWidget> createState() => _PickableAudioState();
}

class _PickableAudioState extends State<PickableAudio> {
  late final AudioPlayer _audioPlayer;
  late final StreamSubscription _audioPlayerStateListener;
  PlayerState _playerState = PlayerState.completed;
  IconData _iconData = Icons.play_arrow;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()
      ..setReleaseMode(ReleaseMode.stop)
      ..audioCache = AudioCache(prefix: '');
    _audioPlayerStateListener = _audioPlayer.onPlayerStateChanged.listen((event) {
      debugPrint('player state = $event');
      _playerState = event;
      setState(() {
        _iconData = event == PlayerState.playing ? Icons.pause : Icons.play_arrow;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayerStateListener.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.audioFilePickerResult?.files.single case final file?) ...[
              Text(file.name, overflow: TextOverflow.ellipsis)
            ],
            if (widget.audioUrl != null && (widget.audioUrl?.isNotEmpty ?? false)) ...[
              Text('${widget.audioUrl?.split('/').last}',overflow: TextOverflow.ellipsis)
            ],
            ElevatedButton(
                onPressed: () async {
                  await widget.onPickAudioFile?.call();
                },
                child: const Text('Выбрать файл')),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton.outlined(
                    onPressed: () => _playWithSpeed(_normalSpeed),
                    icon: Icon(_iconData)),
                const SizedBox(width: 8),
                IconButton.outlined(
                  onPressed: () => _playWithSpeed(_slowSpeed),
                  icon: Row(
                    children: [
                      const Text('Медленно'),
                      const SizedBox(width: 8),
                      Icon(_iconData)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _playWithSpeed([double speed = 1.0]) {
    final file = widget.audioFilePickerResult?.files.single;
    final url = widget.audioUrl;
    Source? audioSource = url != null && url.trim().isNotEmpty ? UrlSource(url) : file != null ? BytesSource(file.bytes!) : null;
    if (audioSource case final soruse?) {
      if (_audioPlayer.state == PlayerState.playing) {
        _audioPlayer.stop();
      } else {
        _audioPlayer.setPlaybackRate(speed);
        if (_audioPlayer.source != null) {
          _audioPlayer.setSource(audioSource);
        }
        _audioPlayer.play(soruse);
      }
    }
  }
}
