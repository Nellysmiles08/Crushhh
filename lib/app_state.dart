import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchActiveUsername = false;
  bool get searchActiveUsername => _searchActiveUsername;
  set searchActiveUsername(bool value) {
    _searchActiveUsername = value;
  }

  bool _searchActiveSnapchat = false;
  bool get searchActiveSnapchat => _searchActiveSnapchat;
  set searchActiveSnapchat(bool value) {
    _searchActiveSnapchat = value;
  }

  bool _searchActiveNumber = false;
  bool get searchActiveNumber => _searchActiveNumber;
  set searchActiveNumber(bool value) {
    _searchActiveNumber = value;
  }

  bool _searchActiveInstagram = false;
  bool get searchActiveInstagram => _searchActiveInstagram;
  set searchActiveInstagram(bool value) {
    _searchActiveInstagram = value;
  }

  bool _toggleIcon = false;
  bool get toggleIcon => _toggleIcon;
  set toggleIcon(bool value) {
    _toggleIcon = value;
  }

  double _tempDistance = 100000.0;
  double get tempDistance => _tempDistance;
  set tempDistance(double value) {
    _tempDistance = value;
  }

  int _totalMessages = 0;
  int get totalMessages => _totalMessages;
  set totalMessages(int value) {
    _totalMessages = value;
  }

  int _readMessages = 0;
  int get readMessages => _readMessages;
  set readMessages(int value) {
    _readMessages = value;
  }

  final _userDocQueryManager = FutureRequestManager<UserRecord>();
  Future<UserRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UserRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}
