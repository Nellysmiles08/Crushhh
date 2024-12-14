// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BoldcrushesStruct extends FFFirebaseStruct {
  BoldcrushesStruct({
    DocumentReference? user,
    DateTime? crushDate,
    DateTime? crushTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _crushDate = crushDate,
        _crushTime = crushTime,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "crush_date" field.
  DateTime? _crushDate;
  DateTime? get crushDate => _crushDate;
  set crushDate(DateTime? val) => _crushDate = val;

  bool hasCrushDate() => _crushDate != null;

  // "crush_time" field.
  DateTime? _crushTime;
  DateTime? get crushTime => _crushTime;
  set crushTime(DateTime? val) => _crushTime = val;

  bool hasCrushTime() => _crushTime != null;

  static BoldcrushesStruct fromMap(Map<String, dynamic> data) =>
      BoldcrushesStruct(
        user: data['user'] as DocumentReference?,
        crushDate: data['crush_date'] as DateTime?,
        crushTime: data['crush_time'] as DateTime?,
      );

  static BoldcrushesStruct? maybeFromMap(dynamic data) => data is Map
      ? BoldcrushesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'crush_date': _crushDate,
        'crush_time': _crushTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'crush_date': serializeParam(
          _crushDate,
          ParamType.DateTime,
        ),
        'crush_time': serializeParam(
          _crushTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static BoldcrushesStruct fromSerializableMap(Map<String, dynamic> data) =>
      BoldcrushesStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['User'],
        ),
        crushDate: deserializeParam(
          data['crush_date'],
          ParamType.DateTime,
          false,
        ),
        crushTime: deserializeParam(
          data['crush_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'BoldcrushesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BoldcrushesStruct &&
        user == other.user &&
        crushDate == other.crushDate &&
        crushTime == other.crushTime;
  }

  @override
  int get hashCode => const ListEquality().hash([user, crushDate, crushTime]);
}

BoldcrushesStruct createBoldcrushesStruct({
  DocumentReference? user,
  DateTime? crushDate,
  DateTime? crushTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BoldcrushesStruct(
      user: user,
      crushDate: crushDate,
      crushTime: crushTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BoldcrushesStruct? updateBoldcrushesStruct(
  BoldcrushesStruct? boldcrushes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    boldcrushes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBoldcrushesStructData(
  Map<String, dynamic> firestoreData,
  BoldcrushesStruct? boldcrushes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (boldcrushes == null) {
    return;
  }
  if (boldcrushes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && boldcrushes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final boldcrushesData =
      getBoldcrushesFirestoreData(boldcrushes, forFieldValue);
  final nestedData =
      boldcrushesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = boldcrushes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBoldcrushesFirestoreData(
  BoldcrushesStruct? boldcrushes, [
  bool forFieldValue = false,
]) {
  if (boldcrushes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(boldcrushes.toMap());

  // Add any Firestore field values
  boldcrushes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBoldcrushesListFirestoreData(
  List<BoldcrushesStruct>? boldcrushess,
) =>
    boldcrushess?.map((e) => getBoldcrushesFirestoreData(e, true)).toList() ??
    [];
