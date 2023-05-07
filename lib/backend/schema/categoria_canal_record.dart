import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_canal_record.g.dart';

abstract class CategoriaCanalRecord
    implements Built<CategoriaCanalRecord, CategoriaCanalRecordBuilder> {
  static Serializer<CategoriaCanalRecord> get serializer =>
      _$categoriaCanalRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaCanalRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaCanal');

  static Stream<CategoriaCanalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaCanalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaCanalRecord._();
  factory CategoriaCanalRecord(
          [void Function(CategoriaCanalRecordBuilder) updates]) =
      _$CategoriaCanalRecord;

  static CategoriaCanalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaCanalRecordData({
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaCanalRecord.serializer,
    CategoriaCanalRecord(
      (c) => c..nome = nome,
    ),
  );

  return firestoreData;
}
