import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CrushRecord extends FirestoreRecord {
  CrushRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "crush_ref" field.
  DocumentReference? _crushRef;
  DocumentReference? get crushRef => _crushRef;
  bool hasCrushRef() => _crushRef != null;

  // "crush_time" field.
  DateTime? _crushTime;
  DateTime? get crushTime => _crushTime;
  bool hasCrushTime() => _crushTime != null;

  // "bold_crush" field.
  bool? _boldCrush;
  bool get boldCrush => _boldCrush ?? false;
  bool hasBoldCrush() => _boldCrush != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _crushRef = snapshotData['crush_ref'] as DocumentReference?;
    _crushTime = snapshotData['crush_time'] as DateTime?;
    _boldCrush = snapshotData['bold_crush'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Crush');

  static Stream<CrushRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CrushRecord.fromSnapshot(s));

  static Future<CrushRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CrushRecord.fromSnapshot(s));

  static CrushRecord fromSnapshot(DocumentSnapshot snapshot) => CrushRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CrushRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CrushRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CrushRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CrushRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCrushRecordData({
  DocumentReference? userRef,
  DocumentReference? crushRef,
  DateTime? crushTime,
  bool? boldCrush,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'crush_ref': crushRef,
      'crush_time': crushTime,
      'bold_crush': boldCrush,
    }.withoutNulls,
  );

  return firestoreData;
}

class CrushRecordDocumentEquality implements Equality<CrushRecord> {
  const CrushRecordDocumentEquality();

  @override
  bool equals(CrushRecord? e1, CrushRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.crushRef == e2?.crushRef &&
        e1?.crushTime == e2?.crushTime &&
        e1?.boldCrush == e2?.boldCrush;
  }

  @override
  int hash(CrushRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.crushRef, e?.crushTime, e?.boldCrush]);

  @override
  bool isValidKey(Object? o) => o is CrushRecord;
}
