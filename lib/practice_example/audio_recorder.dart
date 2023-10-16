import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class AudioRecorder extends StatefulWidget {
  const AudioRecorder({super.key});

  @override
  State<AudioRecorder> createState() => _AudioRecorderState();
}

class _AudioRecorderState extends State<AudioRecorder> {
  final record = Record();

  @override
  void initState() {
    super.initState();
    setLocalFile();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  String filePath = '';

  setLocalFile() async {
    final path = await _localPath;
    var file = File('$path/test.m4a');
    filePath = file.path;

    debugPrint(filePath);
  }

  startRecording() async {
    if (await record.hasPermission()) {
      debugPrint('record is start');
      await record.start(
        path: filePath,
        encoder: AudioEncoder.aacLc,
      );

      setState(() {
        setRecordingStatus = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Record Audio'),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _recordStatus ? stopRecording() : startRecording();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(recordingStatus ? Icons.stop : Icons.play_arrow),
              const SizedBox(width: 8.0),
              Text(recordingStatus ? 'Stop Recording' : 'Start Recording'),
            ],
          ),
        ),
      ),
    );
  }

  bool get recordingStatus => _recordStatus;

  bool _recordStatus = false;

  set setRecordingStatus(bool status) => _recordStatus = status;

  stopRecording() async {
    debugPrint('record is stopped');
    await record.stop();
    setState(() {
      setRecordingStatus = false;
    });
  }
}
