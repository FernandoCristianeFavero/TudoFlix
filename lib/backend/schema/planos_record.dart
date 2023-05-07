import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'planos_record.g.dart';

abstract class PlanosRecord
    implements Built<PlanosRecord, PlanosRecordBuilder> {
  static Serializer<PlanosRecord> get serializer => _$planosRecordSerializer;

  @BuiltValueField(wireName: 'nome_plano')
  String? get nomePlano;

  @BuiltValueField(wireName: 'tempo_plano')
  int? get tempoPlano;

  @BuiltValueField(wireName: 'descricao_plano')
  String? get descricaoPlano;

  @BuiltValueField(wireName: 'ativo_plano')
  bool? get ativoPlano;

  @BuiltValueField(wireName: 'preco_plano')
  double? get precoPlano;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlanosRecordBuilder builder) => builder
    ..nomePlano = ''
    ..tempoPlano = 0
    ..descricaoPlano = ''
    ..ativoPlano = false
    ..precoPlano = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Planos');

  static Stream<PlanosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlanosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlanosRecord._();
  factory PlanosRecord([void Function(PlanosRecordBuilder) updates]) =
      _$PlanosRecord;

  static PlanosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlanosRecordData({
  String? nomePlano,
  int? tempoPlano,
  String? descricaoPlano,
  bool? ativoPlano,
  double? precoPlano,
}) {
  final firestoreData = serializers.toFirestore(
    PlanosRecord.serializer,
    PlanosRecord(
      (p) => p
        ..nomePlano = nomePlano
        ..tempoPlano = tempoPlano
        ..descricaoPlano = descricaoPlano
        ..ativoPlano = ativoPlano
        ..precoPlano = precoPlano,
    ),
  );

  return firestoreData;
}
