import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'canais_record.g.dart';

abstract class CanaisRecord
    implements Built<CanaisRecord, CanaisRecordBuilder> {
  static Serializer<CanaisRecord> get serializer => _$canaisRecordSerializer;

  String? get nome;

  String? get categoria;

  @BuiltValueField(wireName: 'id_canal')
  String? get idCanal;

  String? get logo;

  BuiltList<DocumentReference>? get favorito;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CanaisRecordBuilder builder) => builder
    ..nome = ''
    ..categoria = ''
    ..idCanal = ''
    ..logo = ''
    ..favorito = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('canais');

  static Stream<CanaisRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CanaisRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CanaisRecord._();
  factory CanaisRecord([void Function(CanaisRecordBuilder) updates]) =
      _$CanaisRecord;

  static CanaisRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCanaisRecordData({
  String? nome,
  String? categoria,
  String? idCanal,
  String? logo,
}) {
  final firestoreData = serializers.toFirestore(
    CanaisRecord.serializer,
    CanaisRecord(
      (c) => c
        ..nome = nome
        ..categoria = categoria
        ..idCanal = idCanal
        ..logo = logo
        ..favorito = null,
    ),
  );

  return firestoreData;
}
