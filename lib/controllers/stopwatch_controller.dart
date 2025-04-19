import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchController {
  final ValueNotifier<Duration> time = ValueNotifier(Duration.zero);
  Timer? _timer;

  void start() {
    _timer ??= Timer.periodic(Duration(seconds: 1), (_) {
      time.value = Duration(seconds: time.value.inSeconds + 1);
    });
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  void reset() {
    stop();
    time.value = Duration.zero;
  }
}