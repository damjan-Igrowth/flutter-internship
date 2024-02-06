import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/my_app1_icons.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int hundredths = 0, seconds = 0, minutes = 0;
  Timer? timer;
  bool started = false;
  List<Duration> laps = [];
  double longestDifference = 0.0;
  double shortestDifference = 0.0;

  void stop() {
    timer?.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer?.cancel();
    setState(() {
      hundredths = 0;
      seconds = 0;
      minutes = 0;

      started = false;
      laps.clear();
    });
  }

  void addLaps() {
    Duration lap = Duration(
      minutes: minutes,
      seconds: seconds,
      milliseconds: hundredths * 10,
    );

    setState(() {
      laps.add(lap);

      List<double> differences = [laps[0].inMilliseconds / 10];
      differences.addAll(calculateLapDifferences(laps));
      longestDifference = differences.isNotEmpty
          ? differences.reduce((a, b) => a > b ? a : b)
          : 0.0;
      shortestDifference = differences.isNotEmpty
          ? differences.reduce((a, b) => a < b ? a : b)
          : 0.0;
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
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E111C),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      ShopIcons.stopwatch_1,
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
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                Text(
                  '${_twoDigits(minutes)}:${_twoDigits(seconds)}.${_twoDigits(hundredths)}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Inter',
                    fontSize: 64,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    fontFeatures: [
                      FontFeature.tabularFigures(),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _CircularButton(
                      onPressed: !started ? reset : addLaps,
                      data: (!started) ? 'Reset' : 'Lap',
                      circleColor: (!started)
                          ? const Color(0xFF1C2135)
                          : const Color(0xFF1C2135),
                      textColor: (!started)
                          ? const Color(0xFF8190CD)
                          : const Color(0xFF8190CD),
                    ),
                    _CircularButton(
                      onPressed: !started ? start : stop,
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
              ],
            ),
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(color: Color(0xFF0B0D15)),
              child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  final reversedIndex = laps.length - 1 - index;
                  Duration firstLap =
                      const Duration(minutes: 0, seconds: 0, milliseconds: 0);
                  Duration secondlap = laps[reversedIndex];
                  if (reversedIndex > 0) {
                    firstLap = laps[reversedIndex - 1];
                  }
                  final difference =
                      calculateLapDifference(firstLap, secondlap);
                  Color textColor = const Color(0xFFFFFFFF);

                  if (laps.length > 1) {
                    if (difference == longestDifference) {
                      textColor = const Color(0xFFF13F3F);
                    } else if (difference == shortestDifference) {
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
                        _LapDuration(
                          lapTime: laps[reversedIndex],
                          textColor: textColor,
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

String _twoDigits(int value) {
  return value.toString().padLeft(2, '0');
}

double calculateLapDifference(Duration lap1, Duration lap2) {
  return (lap2.inMilliseconds.toDouble() - lap1.inMilliseconds.toDouble()) / 10;
}

List<double> calculateLapDifferences(List<Duration> laps) {
  List<double> differences = [];
  for (int i = 1; i < laps.length; i++) {
    double difference = calculateLapDifference(laps[i - 1], laps[i]);
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
    return _LapBase(textColor: textColor, basic: lapText);
  }
}

class _LapDuration extends StatelessWidget {
  final Duration lapTime;
  final Color textColor;

  const _LapDuration({
    required this.lapTime,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        '${_twoDigits(lapTime.inMinutes.remainder(60))}:${_twoDigits(lapTime.inSeconds.remainder(60))}.${_twoDigits(lapTime.inMilliseconds.remainder(1000) ~/ 10)}';

    return _LapBase(textColor: textColor, basic: formattedTime);
  }
}

class _LapBase extends StatelessWidget {
  final Color textColor;
  final String basic;

  const _LapBase({required this.textColor, required this.basic});

  @override
  Widget build(BuildContext context) {
    return Text(
      basic,
      textAlign: TextAlign.right,
      style: TextStyle(
        color: textColor,
        fontFamily: 'Inter',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
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
