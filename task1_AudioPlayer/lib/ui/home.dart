import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';

String My_path;

myhome() {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;
  _progressor = Anima

  void playLocal() => audioPlayer.play(My_path);
  void pause() => audioPlayer.pause();
  void resume() => audioPlayer.resume();
  void stop() => audioPlayer.stop();
  var mybody = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 40,
          width: 300,
          color: Colors.pink,
          child: RaisedButton(
            onPressed: () async {
              var path = await FilePicker.getFilePath(type: FileType.audio);
              print(path);
              My_path = path;
            },
            child: Text(
              'Load Audio File',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.pink,
          ),
          //margin: EdgeInsets.only(bottom: 30),
        ),
        Container(
          height: 40,
          width: 300,
          color: Colors.pink,
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.white,
                  ),
                  onPressed: stop),
              AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: null,
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    ),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
          'https://raw.githubusercontent.com/Laveenajethani/Task1FlutterAudioPlayer/master/images/back.jpg',
        ),
      ),
    ),
  );
  var design = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text("MusicPlayer"),
    ),
    body: mybody,
  );
  return design;
}
