import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
        ),
        onPressed: () => print('Play'),
        icon: const Icon(
          Icons.play_arrow,
          size: 30.0,
        ),
        label: const Text(
          'Play',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ));
  }
}
