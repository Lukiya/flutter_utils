part of 'dreamvat.dart';

extension StringExtentions on String? {
  bool isMissing() {
    if (this == null) return true;

    return this!.isEmpty;
  }

  bool isPresent() {
    if (this == null) return false;

    return this!.isNotEmpty;
  }
}
