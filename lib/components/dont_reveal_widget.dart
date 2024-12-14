import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'dont_reveal_model.dart';
export 'dont_reveal_model.dart';

class DontRevealWidget extends StatefulWidget {
  const DontRevealWidget({
    super.key,
    required this.crushUserDoc,
  });

  final UserRecord? crushUserDoc;

  @override
  State<DontRevealWidget> createState() => _DontRevealWidgetState();
}

class _DontRevealWidgetState extends State<DontRevealWidget> {
  late DontRevealModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DontRevealModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0x5A000000),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Are you sure?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.network(
                                          valueOrDefault<String>(
                                            widget.crushUserDoc?.photoUrl,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/insta-kri0yp/assets/l3bnmybtkte5/Profile_user_2.png',
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: valueOrDefault<String>(
                                          widget.crushUserDoc?.photoUrl,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/insta-kri0yp/assets/l3bnmybtkte5/Profile_user_2.png',
                                        ),
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: valueOrDefault<String>(
                                    widget.crushUserDoc?.photoUrl,
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/insta-kri0yp/assets/l3bnmybtkte5/Profile_user_2.png',
                                  ),
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        widget.crushUserDoc?.photoUrl,
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/insta-kri0yp/assets/l3bnmybtkte5/Profile_user_2.png',
                                      ),
                                      width: 80.0,
                                      height: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'This won\'t reveal your crush on ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget.crushUserDoc?.firstName,
                                        'User',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' but could match you together if they feel the same.',
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var shouldSetState = false;
                                        final firestoreBatch =
                                            FirebaseFirestore.instance.batch();
                                        try {
                                          _model.crushDoc =
                                              await queryCrushRecordOnce(
                                            queryBuilder: (crushRecord) =>
                                                crushRecord
                                                    .where(
                                                      'user_ref',
                                                      isEqualTo:
                                                          currentUserReference,
                                                    )
                                                    .where(
                                                      'crush_ref',
                                                      isEqualTo: widget
                                                          .crushUserDoc
                                                          ?.reference,
                                                    ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          shouldSetState = true;
                                          if (_model.crushDoc?.reference !=
                                              null) {
                                            firestoreBatch.update(
                                                _model.crushDoc!.reference,
                                                createCrushRecordData(
                                                  boldCrush: false,
                                                ));

                                            firestoreBatch
                                                .update(currentUserReference!, {
                                              ...mapToFirestore(
                                                {
                                                  'crushes':
                                                      FieldValue.arrayUnion([
                                                    widget
                                                        .crushUserDoc?.reference
                                                  ]),
                                                  'bold_crushes':
                                                      FieldValue.arrayRemove([
                                                    widget
                                                        .crushUserDoc?.reference
                                                  ]),
                                                },
                                              ),
                                            });
                                          } else {
                                            firestoreBatch.set(
                                                CrushRecord.collection.doc(),
                                                createCrushRecordData(
                                                  userRef: currentUserReference,
                                                  crushRef: widget
                                                      .crushUserDoc?.reference,
                                                  crushTime:
                                                      getCurrentTimestamp,
                                                  boldCrush: false,
                                                ));

                                            firestoreBatch
                                                .update(currentUserReference!, {
                                              ...mapToFirestore(
                                                {
                                                  'crushes':
                                                      FieldValue.arrayUnion([
                                                    widget
                                                        .crushUserDoc?.reference
                                                  ]),
                                                },
                                              ),
                                            });
                                          }

                                          _model.existingCrushDoc =
                                              await queryCrushRecordOnce(
                                            queryBuilder: (crushRecord) =>
                                                crushRecord
                                                    .where(
                                                      'user_ref',
                                                      isEqualTo: widget
                                                          .crushUserDoc
                                                          ?.reference,
                                                    )
                                                    .where(
                                                      'crush_ref',
                                                      isEqualTo:
                                                          currentUserReference,
                                                    ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          shouldSetState = true;
                                          if (_model.existingCrushDoc
                                                  ?.reference !=
                                              null) {
                                            firestoreBatch
                                                .update(currentUserReference!, {
                                              ...mapToFirestore(
                                                {
                                                  'matches':
                                                      FieldValue.arrayUnion([
                                                    widget
                                                        .crushUserDoc?.reference
                                                  ]),
                                                },
                                              ),
                                            });

                                            firestoreBatch.update(
                                                widget.crushUserDoc!.reference,
                                                {
                                                  ...mapToFirestore(
                                                    {
                                                      'matches': FieldValue
                                                          .arrayUnion([
                                                        currentUserReference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                            if (widget
                                                .crushUserDoc!.newMatchAlerts) {
                                              _model.userList = [];
                                              safeSetState(() {});
                                              _model.addToUserList(
                                                  currentUserReference!);
                                              safeSetState(() {});
                                              _model.addToUserList(widget
                                                  .crushUserDoc!.reference);
                                              safeSetState(() {});
                                              triggerPushNotification(
                                                notificationTitle:
                                                    'You have a new Match!',
                                                notificationText:
                                                    'Tap to see your most recent match',
                                                notificationSound: 'default',
                                                userRefs:
                                                    _model.userList.toList(),
                                                initialPageName: 'Matches',
                                                parameterData: {},
                                              );
                                              Navigator.pop(context);
                                            } else {
                                              Navigator.pop(context);
                                            }

                                            if (shouldSetState) {
                                              safeSetState(() {});
                                            }
                                            return;
                                          } else {
                                            if (widget
                                                .crushUserDoc!.newCrushAlerts) {
                                              triggerPushNotification(
                                                notificationTitle:
                                                    'You have a new Crush!',
                                                notificationText:
                                                    'Tap to see your most recent crush',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  widget
                                                      .crushUserDoc!.reference
                                                ],
                                                initialPageName: 'Profile',
                                                parameterData: {},
                                              );
                                              Navigator.pop(context);
                                            } else {
                                              Navigator.pop(context);
                                            }

                                            if (shouldSetState) {
                                              safeSetState(() {});
                                            }
                                            return;
                                          }
                                        } finally {
                                          await firestoreBatch.commit();
                                        }

                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                      },
                                      text: 'Yes',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        Navigator.pop(context);
                                      },
                                      text: 'No',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 20.0)),
                              ),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
