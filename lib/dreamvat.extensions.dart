part of 'dreamvat.dart';

extension ObjectExtentions on Object? {
  bool isMissing() {
    if (this == null) return true;

    if (this is String) {}

    return false;
  }

  bool isPresent() {
    if (this == null) return false;

    if (this is String) {
      return toString().isNotEmpty;
    }

    return true;
  }
}
