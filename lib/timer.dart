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
    return Draggable(child: Container(
      child: CircularCountDownTimer(width: 5.0, height: 5.0, duration: 10,
        fillColor: Colors.white, ringColor: Colors.blue,
            autoStart: true,
        isReverse: true,
        isTimerTextShown: true,
        onComplete: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateScreen()));}
      ),
    ), feedback: Container(child: CircularCountDownTimer(width: 5.0, height: 5.0, duration: 10,
        fillColor: Colors.white, ringColor: Colors.blue,
        autoStart: true,
        isReverse: true,
        isTimerTextShown: true,
        onComplete: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateScreen()));}
    ),));
  }
}
