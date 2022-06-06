library dreamvat;

import 'package:flutter/foundation.dart';

class StatusMonitor<T> extends ChangeNotifier {
  String _status = "";
  String get status => _status;

  bool _running = false;
  bool get running => _running;

  int _flags = 0;
  int get flags => _flags;

  late T _value;
  T get value => _value;
  set value(T v) {
    if (_value != v) {
      _value = v;
      notifyListeners();
    }
  }

  StatusMonitor({String? status = "", bool? running, int? flags, T Function()? defaultValue}) {
    if (status != null) _status = status;
    if (running != null) _running = running;
    if (flags != null) _flags = flags;
    if (defaultValue != null) _value = defaultValue();
  }

  void setStatus(String status, {bool running = true, int flags = 0}) {
    _status = status;
    _running = running;
    _flags = flags;
    notifyListeners();
  }

  @override
  String toString() {
    if (_value != null) {
      return _value.toString();
    }

    return super.toString();
  }
}
