import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:volume/volume.dart';

class MuteButton extends StatefulWidget {
  const MuteButton({Key? key}) : super(key: key);

  @override
  State<MuteButton> createState() => _MuteButtonState();
}

class _MuteButtonState extends State<MuteButton> {
  var _muteSound = false;
  late AudioManager audioManager;
  late int maxVol, currentVol;
  ShowVolumeUI showVolumeUI = ShowVolumeUI.SHOW;

  @override
  void initState() {
    super.initState();
    audioManager = AudioManager.STREAM_MUSIC;
    initAudioStreamType();
    updateVolumes();
  }

  Future<void> initAudioStreamType() async {
    await Volume.controlVolume(AudioManager.STREAM_MUSIC);
  }

  updateVolumes() async {
    // get Max Volume
    maxVol = await Volume.getMaxVol;
    // get Current Volume
    currentVol = await Volume.getVol;
    setState(() {});
  }

  setVol(int i) async {
    await Volume.setVol(i, showVolumeUI: showVolumeUI);
  }

  Widget _muteButtonIcon() {
    if (_muteSound == true) {
      return const Icon(Icons.volume_off_sharp);
    } else {
      return const Icon(Icons.volume_up);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: _muteButtonIcon(),
      onPressed: () {
        if (_muteSound == false) {
          setState(() {
            _muteSound = true;
            Volume.setVol(0);
          });
        } else {
          setState(() {
            _muteSound = false;
            Volume.setVol(50);
          });
          ;
        }
      },
    );
  }
}
