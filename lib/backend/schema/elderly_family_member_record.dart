import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElderlyFamilyMemberRecord extends FirestoreRecord {
  ElderlyFamilyMemberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "video_recordings" field.
  List<String>? _videoRecordings;
  List<String> get videoRecordings => _videoRecordings ?? const [];
  bool hasVideoRecordings() => _videoRecordings != null;

  // "audio_recordings" field.
  List<String>? _audioRecordings;
  List<String> get audioRecordings => _audioRecordings ?? const [];
  bool hasAudioRecordings() => _audioRecordings != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  bool hasRelation() => _relation != null;

  void _initializeFields() {
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _videoRecordings = getDataList(snapshotData['video_recordings']);
    _audioRecordings = getDataList(snapshotData['audio_recordings']);
    _images = getDataList(snapshotData['images']);
    _age = snapshotData['age'] as String?;
    _relation = snapshotData['relation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('elderly_family_member');

  static Stream<ElderlyFamilyMemberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElderlyFamilyMemberRecord.fromSnapshot(s));

  static Future<ElderlyFamilyMemberRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ElderlyFamilyMemberRecord.fromSnapshot(s));

  static ElderlyFamilyMemberRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElderlyFamilyMemberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElderlyFamilyMemberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElderlyFamilyMemberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElderlyFamilyMemberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElderlyFamilyMemberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElderlyFamilyMemberRecordData({
  String? firstName,
  String? lastName,
  DocumentReference? userReference,
  String? age,
  String? relation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'user_reference': userReference,
      'age': age,
      'relation': relation,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElderlyFamilyMemberRecordDocumentEquality
    implements Equality<ElderlyFamilyMemberRecord> {
  const ElderlyFamilyMemberRecordDocumentEquality();

  @override
  bool equals(ElderlyFamilyMemberRecord? e1, ElderlyFamilyMemberRecord? e2) {
    const listEquality = ListEquality();
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.userReference == e2?.userReference &&
        listEquality.equals(e1?.videoRecordings, e2?.videoRecordings) &&
        listEquality.equals(e1?.audioRecordings, e2?.audioRecordings) &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.age == e2?.age &&
        e1?.relation == e2?.relation;
  }

  @override
  int hash(ElderlyFamilyMemberRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.userReference,
        e?.videoRecordings,
        e?.audioRecordings,
        e?.images,
        e?.age,
        e?.relation
      ]);

  @override
  bool isValidKey(Object? o) => o is ElderlyFamilyMemberRecord;
}
