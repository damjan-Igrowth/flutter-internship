import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_app1_icons.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = '00', digitMinutes = '00', digitHours = '00';
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = '00';
      digitMinutes = '00';
      digitHours = '00';

      started = false;
      laps.clear();
    });
  }

  void addLaps() {
    String lap = '$digitHours:$digitMinutes.$digitSeconds';
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ? '$seconds' : '0$seconds';
        digitMinutes = (minutes >= 10) ? '$minutes' : '0$minutes';
        digitHours = (hours >= 10) ? '$hours' : '0$hours';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0E111C),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(124, 58, 126, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyApp1.stopwatch_1,
                  color: Color(0xFFFFFFFF),
                ),
                SizedBox(width: 8),
                Text('Stopwatch',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 54),
              child: Text(
                '$digitHours:$digitMinutes.$digitSeconds',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Inter',
                    fontSize: 64,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _CircularButton(
                  onPressed: () {
                    (!started) ? reset() : addLaps();
                  },
                  data: (!started) ? 'Reset' : 'Lap',
                  circleColor: (!started)
                      ? const Color(0xFF1C2135)
                      : const Color(0xFF1C2135),
                  textColor: (!started)
                      ? const Color(0xFF8190CD)
                      : const Color(0xFF8190CD),
                ),
                _CircularButton(
                  onPressed: () {
                    (!started) ? start() : stop();
                  },
                  data: (!started) ? 'Start' : 'Stop',
                  circleColor: (!started)
                      ? const Color(0xFF1C3531)
                      : const Color(0xFF351C22),
                  textColor: (!started)
                      ? const Color(0xFF4AE575)
                      : const Color(0xFFDF5151),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          SingleChildScrollView(
            child: Container(
              height: 510,
              decoration: const BoxDecoration(color: Color(0xFF0B0D15)),
              child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lap ${index + 1}',
                          style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${laps[index]}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color circleColor;
  final Color textColor;
  final String data;

  const _CircularButton({
    required this.onPressed,
    required this.data,
    required this.circleColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
        child: Center(
          child: Text(data,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none)),
        ),
      ),
    );
  }
}
