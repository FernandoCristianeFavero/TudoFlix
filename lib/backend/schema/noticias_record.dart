import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'noticias_record.g.dart';

abstract class NoticiasRecord
    implements Built<NoticiasRecord, NoticiasRecordBuilder> {
  static Serializer<NoticiasRecord> get serializer =>
      _$noticiasRecordSerializer;

  String? get titulo;

  String? get descricao;

  DateTime? get data;

  String? get img;

  String? get autor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticiasRecordBuilder builder) => builder
    ..titulo = ''
    ..descricao = ''
    ..img = ''
    ..autor = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticiasRecord._();
  factory NoticiasRecord([void Function(NoticiasRecordBuilder) updates]) =
      _$NoticiasRecord;

  static NoticiasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticiasRecordData({
  String? titulo,
  String? descricao,
  DateTime? data,
  String? img,
  String? autor,
}) {
  final firestoreData = serializers.toFirestore(
    NoticiasRecord.serializer,
    NoticiasRecord(
      (n) => n
        ..titulo = titulo
        ..descricao = descricao
        ..data = data
        ..img = img
        ..autor = autor,
    ),
  );

  return firestoreData;
}
