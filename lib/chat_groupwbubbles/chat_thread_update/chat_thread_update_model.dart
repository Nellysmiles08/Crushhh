import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'chat_thread_update_widget.dart' show ChatThreadUpdateWidget;
import 'package:flutter/material.dart';

class ChatThreadUpdateModel extends FlutterFlowModel<ChatThreadUpdateWidget> {
  /// Query cache managers for this widget.

  final _chatUserManager = FutureRequestManager<UserRecord>();
  Future<UserRecord> chatUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UserRecord> Function() requestFn,
  }) =>
      _chatUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatUserCache() => _chatUserManager.clear();
  void clearChatUserCacheKey(String? uniqueKey) =>
      _chatUserManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearChatUserCache();
  }
}
