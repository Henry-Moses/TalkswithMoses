import '../database.dart';

class RecordingTable extends SupabaseTable<RecordingRow> {
  @override
  String get tableName => 'recording';

  @override
  RecordingRow createRow(Map<String, dynamic> data) => RecordingRow(data);
}

class RecordingRow extends SupabaseDataRow {
  RecordingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get recordingName => getField<String>('recording_name');
  set recordingName(String? value) => setField<String>('recording_name', value);

  String? get summary => getField<String>('summary');
  set summary(String? value) => setField<String>('summary', value);

  String? get transcript => getField<String>('transcript');
  set transcript(String? value) => setField<String>('transcript', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get familyMemberId => getField<int>('family_member_id');
  set familyMemberId(int? value) => setField<int>('family_member_id', value);

  String? get audioFile => getField<String>('audio_file');
  set audioFile(String? value) => setField<String>('audio_file', value);
}
