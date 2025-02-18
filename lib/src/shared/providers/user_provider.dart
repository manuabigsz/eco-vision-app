// ignore_for_file: unused_field, empty_catches

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../data/auth/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user;
  String? _userName;
  String? _surName;
  String? _userAvatarUrl;

  String? get userName => _userName ?? _user?.nome;

  String get urlAvatarRealtime {
    final baseUrl = _userAvatarUrl ?? _user?.logo ?? '';
    if (baseUrl.isEmpty) return baseUrl;
    return '$baseUrl?timestamp=${DateTime.now().millisecondsSinceEpoch}';
  }

  String? get avatarUrl => _user?.logo ?? _userAvatarUrl ?? '';

  UserModel? get userObject => _user;

  UserProvider() {}
}
