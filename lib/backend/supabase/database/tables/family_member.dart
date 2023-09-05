import '../database.dart';

class FamilyMemberTable extends SupabaseTable<FamilyMemberRow> {
  @override
  String get tableName => 'family_member';

  @override
  FamilyMemberRow createRow(Map<String, dynamic> data) => FamilyMemberRow(data);
}

class FamilyMemberRow extends SupabaseDataRow {
  FamilyMemberRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FamilyMemberTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get age => getField<String>('age');
  set age(String? value) => setField<String>('age', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get relationship => getField<String>('relationship');
  set relationship(String? value) => setField<String>('relationship', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get profileImagePath => getField<String>('profile_image_path');
  set profileImagePath(String? value) =>
      setField<String>('profile_image_path', value);
}
