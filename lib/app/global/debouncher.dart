import 'dart:async';

// Debouncer class
class Debouncer<T> {
  final Duration delay;
  Timer? _timer;

  Debouncer({this.delay = const Duration(seconds: 2)});

  void run(T Function() callback) {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer(delay, () {
      callback();
    });
  }
}