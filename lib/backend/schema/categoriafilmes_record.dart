import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoriafilmes_record.g.dart';

abstract class CategoriafilmesRecord
    implements Built<CategoriafilmesRecord, CategoriafilmesRecordBuilder> {
  static Serializer<CategoriafilmesRecord> get serializer =>
      _$categoriafilmesRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriafilmesRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoriafilmes');

  static Stream<CategoriafilmesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriafilmesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriafilmesRecord._();
  factory CategoriafilmesRecord(
          [void Function(CategoriafilmesRecordBuilder) updates]) =
      _$CategoriafilmesRecord;

  static CategoriafilmesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriafilmesRecordData({
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriafilmesRecord.serializer,
    CategoriafilmesRecord(
      (c) => c..nome = nome,
    ),
  );

  return firestoreData;
}
