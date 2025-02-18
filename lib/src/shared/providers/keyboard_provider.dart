// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class KeyboardVisibilityProvider with ChangeNotifier, WidgetsBindingObserver {
  bool _isKeyboardVisible = false;

  KeyboardVisibilityProvider() {
    WidgetsBinding.instance.addObserver(this);
    _updateKeyboardVisibility();
  }

  bool get isKeyboardVisible => _isKeyboardVisible;

  void _updateKeyboardVisibility() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    final isVisible = bottomInset > 0;
    if (isVisible != _isKeyboardVisible) {
      _isKeyboardVisible = isVisible;
      notifyListeners();
    }
  }

  @override
  void didChangeMetrics() {
    _updateKeyboardVisibility();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
