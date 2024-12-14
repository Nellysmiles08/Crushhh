import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "snapchat_username" field.
  String? _snapchatUsername;
  String get snapchatUsername => _snapchatUsername ?? '';
  bool hasSnapchatUsername() => _snapchatUsername != null;

  // "instagram_username" field.
  String? _instagramUsername;
  String get instagramUsername => _instagramUsername ?? '';
  bool hasInstagramUsername() => _instagramUsername != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  bool hasSchool() => _school != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "matches" field.
  List<DocumentReference>? _matches;
  List<DocumentReference> get matches => _matches ?? const [];
  bool hasMatches() => _matches != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "crushes" field.
  List<DocumentReference>? _crushes;
  List<DocumentReference> get crushes => _crushes ?? const [];
  bool hasCrushes() => _crushes != null;

  // "bold_crushes" field.
  List<DocumentReference>? _boldCrushes;
  List<DocumentReference> get boldCrushes => _boldCrushes ?? const [];
  bool hasBoldCrushes() => _boldCrushes != null;

  // "new_crush_alerts" field.
  bool? _newCrushAlerts;
  bool get newCrushAlerts => _newCrushAlerts ?? false;
  bool hasNewCrushAlerts() => _newCrushAlerts != null;

  // "new_match_alerts" field.
  bool? _newMatchAlerts;
  bool get newMatchAlerts => _newMatchAlerts ?? false;
  bool hasNewMatchAlerts() => _newMatchAlerts != null;

  // "new_message_alerts" field.
  bool? _newMessageAlerts;
  bool get newMessageAlerts => _newMessageAlerts ?? false;
  bool hasNewMessageAlerts() => _newMessageAlerts != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _username = snapshotData['username'] as String?;
    _snapchatUsername = snapshotData['snapchat_username'] as String?;
    _instagramUsername = snapshotData['instagram_username'] as String?;
    _school = snapshotData['school'] as String?;
    _gender = snapshotData['gender'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _bio = snapshotData['bio'] as String?;
    _matches = getDataList(snapshotData['matches']);
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _crushes = getDataList(snapshotData['crushes']);
    _boldCrushes = getDataList(snapshotData['bold_crushes']);
    _newCrushAlerts = snapshotData['new_crush_alerts'] as bool?;
    _newMatchAlerts = snapshotData['new_match_alerts'] as bool?;
    _newMessageAlerts = snapshotData['new_message_alerts'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  String? username,
  String? snapchatUsername,
  String? instagramUsername,
  String? school,
  String? gender,
  LatLng? location,
  String? bio,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  bool? newCrushAlerts,
  bool? newMatchAlerts,
  bool? newMessageAlerts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'snapchat_username': snapchatUsername,
      'instagram_username': instagramUsername,
      'school': school,
      'gender': gender,
      'location': location,
      'bio': bio,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'new_crush_alerts': newCrushAlerts,
      'new_match_alerts': newMatchAlerts,
      'new_message_alerts': newMessageAlerts,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.username == e2?.username &&
        e1?.snapchatUsername == e2?.snapchatUsername &&
        e1?.instagramUsername == e2?.instagramUsername &&
        e1?.school == e2?.school &&
        e1?.gender == e2?.gender &&
        e1?.location == e2?.location &&
        e1?.bio == e2?.bio &&
        listEquality.equals(e1?.matches, e2?.matches) &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        listEquality.equals(e1?.crushes, e2?.crushes) &&
        listEquality.equals(e1?.boldCrushes, e2?.boldCrushes) &&
        e1?.newCrushAlerts == e2?.newCrushAlerts &&
        e1?.newMatchAlerts == e2?.newMatchAlerts &&
        e1?.newMessageAlerts == e2?.newMessageAlerts;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstName,
        e?.lastName,
        e?.username,
        e?.snapchatUsername,
        e?.instagramUsername,
        e?.school,
        e?.gender,
        e?.location,
        e?.bio,
        e?.matches,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.crushes,
        e?.boldCrushes,
        e?.newCrushAlerts,
        e?.newMatchAlerts,
        e?.newMessageAlerts
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
