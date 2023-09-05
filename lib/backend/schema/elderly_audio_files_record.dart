import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElderlyAudioFilesRecord extends FirestoreRecord {
  ElderlyAudioFilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "elderly_family_member" field.
  DocumentReference? _elderlyFamilyMember;
  DocumentReference? get elderlyFamilyMember => _elderlyFamilyMember;
  bool hasElderlyFamilyMember() => _elderlyFamilyMember != null;

  void _initializeFields() {
    _audio = snapshotData['audio'] as String?;
    _elderlyFamilyMember =
        snapshotData['elderly_family_member'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('elderly_audio_files');

  static Stream<ElderlyAudioFilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElderlyAudioFilesRecord.fromSnapshot(s));

  static Future<ElderlyAudioFilesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ElderlyAudioFilesRecord.fromSnapshot(s));

  static ElderlyAudioFilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElderlyAudioFilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElderlyAudioFilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElderlyAudioFilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElderlyAudioFilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElderlyAudioFilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElderlyAudioFilesRecordData({
  String? audio,
  DocumentReference? elderlyFamilyMember,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'audio': audio,
      'elderly_family_member': elderlyFamilyMember,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElderlyAudioFilesRecordDocumentEquality
    implements Equality<ElderlyAudioFilesRecord> {
  const ElderlyAudioFilesRecordDocumentEquality();

  @override
  bool equals(ElderlyAudioFilesRecord? e1, ElderlyAudioFilesRecord? e2) {
    return e1?.audio == e2?.audio &&
        e1?.elderlyFamilyMember == e2?.elderlyFamilyMember;
  }

  @override
  int hash(ElderlyAudioFilesRecord? e) =>
      const ListEquality().hash([e?.audio, e?.elderlyFamilyMember]);

  @override
  bool isValidKey(Object? o) => o is ElderlyAudioFilesRecord;
}
