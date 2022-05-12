library dreamvat;

import 'package:flutter/foundation.dart';

class StatusMonitor extends ChangeNotifier {
  String _status = "";
  String get status => _status;

  bool _running = false;
  bool get running => _running;

  int _flags = 0;
  int get flags => _flags;

  void setStatus(String status, {bool running = true, int flags = 0}) {
    _status = status;
    _running = running;
    _flags = flags;
    notifyListeners();
  }
}
