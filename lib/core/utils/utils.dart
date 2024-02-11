import 'dart:async';

class AppUtils {
  static Timer? timer;
  static void debounce(Function action, [Duration duration = const Duration(milliseconds: 500)]) {
    if (timer?.isActive ?? false) {
      timer?.cancel();
    }
    timer = Timer(duration, () => action());
  }
}