import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'filmes_record.g.dart';

abstract class FilmesRecord
    implements Built<FilmesRecord, FilmesRecordBuilder> {
  static Serializer<FilmesRecord> get serializer => _$filmesRecordSerializer;

  String? get nome;

  String? get categoria;

  String? get logo;

  String? get sinopse;

  String? get trailer;

  @BuiltValueField(wireName: 'id_filme')
  String? get idFilme;

  BuiltList<DocumentReference>? get favorito;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FilmesRecordBuilder builder) => builder
    ..nome = ''
    ..categoria = ''
    ..logo = ''
    ..sinopse = ''
    ..trailer = ''
    ..idFilme = ''
    ..favorito = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('filmes');

  static Stream<FilmesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FilmesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FilmesRecord._();
  factory FilmesRecord([void Function(FilmesRecordBuilder) updates]) =
      _$FilmesRecord;

  static FilmesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFilmesRecordData({
  String? nome,
  String? categoria,
  String? logo,
  String? sinopse,
  String? trailer,
  String? idFilme,
}) {
  final firestoreData = serializers.toFirestore(
    FilmesRecord.serializer,
    FilmesRecord(
      (f) => f
        ..nome = nome
        ..categoria = categoria
        ..logo = logo
        ..sinopse = sinopse
        ..trailer = trailer
        ..idFilme = idFilme
        ..favorito = null,
    ),
  );

  return firestoreData;
}
