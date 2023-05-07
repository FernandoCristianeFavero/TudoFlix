import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'series_record.g.dart';

abstract class SeriesRecord
    implements Built<SeriesRecord, SeriesRecordBuilder> {
  static Serializer<SeriesRecord> get serializer => _$seriesRecordSerializer;

  String? get nome;

  String? get logo;

  BuiltList<DocumentReference>? get favorito;

  String? get temporada;

  String? get episodio;

  String? get categoria;

  @BuiltValueField(wireName: 'id_serie')
  String? get idSerie;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SeriesRecordBuilder builder) => builder
    ..nome = ''
    ..logo = ''
    ..favorito = ListBuilder()
    ..temporada = ''
    ..episodio = ''
    ..categoria = ''
    ..idSerie = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Series');

  static Stream<SeriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SeriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SeriesRecord._();
  factory SeriesRecord([void Function(SeriesRecordBuilder) updates]) =
      _$SeriesRecord;

  static SeriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSeriesRecordData({
  String? nome,
  String? logo,
  String? temporada,
  String? episodio,
  String? categoria,
  String? idSerie,
}) {
  final firestoreData = serializers.toFirestore(
    SeriesRecord.serializer,
    SeriesRecord(
      (s) => s
        ..nome = nome
        ..logo = logo
        ..favorito = null
        ..temporada = temporada
        ..episodio = episodio
        ..categoria = categoria
        ..idSerie = idSerie,
    ),
  );

  return firestoreData;
}
