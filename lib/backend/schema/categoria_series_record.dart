import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_series_record.g.dart';

abstract class CategoriaSeriesRecord
    implements Built<CategoriaSeriesRecord, CategoriaSeriesRecordBuilder> {
  static Serializer<CategoriaSeriesRecord> get serializer =>
      _$categoriaSeriesRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaSeriesRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaSeries');

  static Stream<CategoriaSeriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaSeriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaSeriesRecord._();
  factory CategoriaSeriesRecord(
          [void Function(CategoriaSeriesRecordBuilder) updates]) =
      _$CategoriaSeriesRecord;

  static CategoriaSeriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaSeriesRecordData({
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaSeriesRecord.serializer,
    CategoriaSeriesRecord(
      (c) => c..nome = nome,
    ),
  );

  return firestoreData;
}
