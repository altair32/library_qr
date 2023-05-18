import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:library_qr/main.dart';
import 'qr_generate.dart';
class cdowntimer extends StatefulWidget {
  const cdowntimer({Key? key}) : super(key: key);

  @override
  State<cdowntimer> createState() => _cdowntimerState();
}

class _cdowntimerState extends State<cdowntimer> {
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(width: 5.0, height: 5.0, duration: 10,
      initialDuration: 10,
      fillColor: Colors.white, ringColor: Colors.blue,
          autoStart: true,
      isReverse: true,
      isTimerTextShown: true,
        onStart: () {
          debugPrint('Countdown Started');
        },
      onComplete: (){print("Count end");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateScreen()));}
    );
  }
}
