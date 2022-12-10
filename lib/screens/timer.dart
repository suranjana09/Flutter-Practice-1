import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimerData extends StatefulWidget {
  const TimerData({super.key});

  @override
  State<TimerData> createState() => _TimerDataState();
}

class _TimerDataState extends State<TimerData> {
  Duration duration = new Duration();
  Timer? timer;
  int seconds = 0;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        final seconds = duration.inSeconds + 1;
        duration = Duration(seconds: seconds);
      });
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() {
      timer?.cancel();
    });
  }

  void resetTimer() {
    setState(() {
      duration = Duration(seconds: seconds);
    });
  }

  void resumeTimer() {
    setState(() {
      startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = duration.inSeconds == 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Timer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: buildTimer(),
            ),
            isRunning || !isCompleted
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isRunning
                          ? CircleAvatar(
                              radius: 30,
                              child: IconButton(
                                icon: Icon(Icons.pause),
                                onPressed: () {
                                  stopTimer(reset: false);
                                },
                              ),
                            )
                          : CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green,
                              child: IconButton(
                                icon: Icon(Icons.play_arrow),
                                onPressed: () {
                                  startTimer();
                                },
                              ),
                            ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: IconButton(
                            icon: Icon(Icons.restart_alt_rounded),
                            onPressed: () {
                              stopTimer();
                            },
                          )),
                    ],
                  )
                : CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                      onPressed: () {
                        startTimer();
                      },
                    ))
          ],
        ),
      ),
    );
  }

  Widget buildTimer() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Text(
      '${hours}:${minutes}:${seconds}',
      style: const TextStyle(fontSize: 50),
    );
  }
}
