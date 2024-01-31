import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_app1_icons.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int hundredths = 0, seconds = 0, minutes = 0;
  String digitHundredths = '00', digitSeconds = '00', digitMinutes = '00';
  Timer? timer;
  bool started = false;
  List<String> laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      hundredths = 0;
      seconds = 0;
      minutes = 0;

      digitHundredths = '00';
      digitSeconds = '00';
      digitMinutes = '00';

      started = false;
      laps.clear();
    });
  }

  void addLaps() {
    String lap = '$digitMinutes:$digitSeconds.$digitHundredths';

    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      int localHundredths = hundredths + 1;
      int localSeconds = seconds;
      int localMinutes = minutes;

      if (localHundredths > 99) {
        if (localSeconds > 59) {
          localMinutes++;
          localSeconds = 0;
        } else {
          localSeconds++;
          localHundredths = 0;
        }
      }
      setState(() {
        hundredths = localHundredths;
        seconds = localSeconds;
        minutes = localMinutes;
        digitHundredths = (hundredths >= 10) ? '$hundredths' : '0$hundredths';
        digitSeconds = (seconds >= 10) ? '$seconds' : '0$seconds';
        digitMinutes = (minutes >= 10) ? '$minutes' : '0$minutes';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 844, maxWidth: 388),
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
                Text(
                  'Stopwatch',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 61, 0),
              child: Text(
                '$digitMinutes:$digitSeconds.$digitHundredths',
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
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFF0B0D15)),
              child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  final reversedIndex = laps.length - 1 - index;
                  final differences = calculateLapDifferences(laps);
                  final longestDifference = differences.isNotEmpty
                      ? differences.reduce((a, b) => a > b ? a : b)
                      : 0.0;
                  final shortestDifference = differences.isNotEmpty
                      ? differences.reduce((a, b) => a < b ? a : b)
                      : 0.0;

                  Color textColor = const Color(0xFFFFFFFF);

                  if (reversedIndex > 0 && reversedIndex < differences.length) {
                    if (differences[reversedIndex - 1] == longestDifference) {
                      textColor = const Color(0xFFF13F3F);
                    }

                    if (differences[reversedIndex - 1] == shortestDifference) {
                      textColor = const Color(0xFF4AE575);
                    }
                  }

                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _LapText(
                          lapText: 'Lap ${reversedIndex + 1}',
                          textColor: textColor,
                        ),
                        _LapText(
                            lapText: laps[reversedIndex], textColor: textColor),
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

Duration durationFromLapString(String lap) {
  List<String> parts = lap.split(':');
  int minutes = int.parse(parts[0]);
  List<String> secondsAndMilliseconds = parts[1].split('.');
  int seconds = int.parse(secondsAndMilliseconds[0]);
  int milliseconds = int.parse(
      secondsAndMilliseconds.length > 1 ? secondsAndMilliseconds[1] : '0');

  return Duration(
      minutes: minutes, seconds: seconds, milliseconds: milliseconds);
}

double lapDifference(String lap1, String lap2) {
  final lap1Duration = durationFromLapString(lap1);
  final lap2Duration = durationFromLapString(lap2);
  return (lap2Duration.inMilliseconds.toDouble() -
          lap1Duration.inMilliseconds.toDouble()) /
      10;
}

List<double> calculateLapDifferences(List<String> laps) {
  List<double> differences = [];
  for (int i = 1; i < laps.length; i++) {
    double difference = lapDifference(laps[i - 1], laps[i]);
    differences.add(difference);
  }
  return differences;
}

class _LapText extends StatelessWidget {
  final String lapText;
  final Color textColor;

  const _LapText({
    required this.lapText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      lapText,
      textAlign: TextAlign.right,
      style: TextStyle(
          color: textColor,
          fontFamily: 'Inter',
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none),
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
