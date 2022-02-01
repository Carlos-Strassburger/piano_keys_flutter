import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(PianoKeysApp());

class PianoKeysApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Container buildWhiteKey({required int noteNumber}) {
    return Container(
      height: 80.0,
      width: 410.0,
      child: FloatingActionButton(
        heroTag: null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Container(),
      ),
    );
  }

  Container buildBlackKey({required int noteNumber}) {
    return Container(
      width: 220.0,
      height: 60.0,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
          ),
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Stack(
              alignment: Alignment.topRight,
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: buildWhiteKey(noteNumber: 1),
                ),
                Container(
                  child: Positioned(
                    top: 90.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 3),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 180.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 5),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 270.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 6),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 360.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 8),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 450.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 10),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 540.0,
                    right: 0.0,
                    child: buildWhiteKey(noteNumber: 12),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 45.0,
                    right: 0.0,
                    child: buildBlackKey(noteNumber: 2),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 140.0,
                    right: 0.0,
                    child: buildBlackKey(noteNumber: 4),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 330.0,
                    right: 0.0,
                    child: buildBlackKey(noteNumber: 7),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 420.0,
                    right: 0.0,
                    child: buildBlackKey(noteNumber: 9),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 510.0,
                    right: 0.0,
                    child: buildBlackKey(noteNumber: 11),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
