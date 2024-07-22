import 'dart:async';

class AppUtils {
  Timer? _timer;
  void debounce(Function() action,
      [Duration duration = const Duration(milliseconds: 500)]) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(duration, action);
  }

  static bool checkFileMemoryLimit(
      {required int fileBytesSize,
      required int limit,
      required MemoryLimitType memoryLimitType}) {
    return memoryLimitType.toBytes(fileBytesSize) <= limit;
  }
}

enum MemoryLimitType {
  b,
  kb,
  mb,
  gb;

  int toBytes(int bytesSize) {
    return switch (this) {
      MemoryLimitType.b => bytesSize,
      MemoryLimitType.kb => (bytesSize / 1024).floor(),
      MemoryLimitType.mb => (bytesSize / 1024 / 1024).floor(),
      MemoryLimitType.gb => (bytesSize / 1024 / 1024 / 1024).floor(),
    };
  }
}
