import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  String? get sobrenome;

  String? get email;

  bool? get adm;

  bool? get revenda;

  String? get plano;

  String? get usuario;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get img;

  String? get senha;

  DateTime? get vencimento;

  @BuiltValueField(wireName: 'cod_indicacao')
  String? get codIndicacao;

  @BuiltValueField(wireName: 'cod_revenda')
  String? get codRevenda;

  bool? get teste;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..sobrenome = ''
    ..email = ''
    ..adm = false
    ..revenda = false
    ..plano = ''
    ..usuario = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..img = ''
    ..senha = ''
    ..codIndicacao = ''
    ..codRevenda = ''
    ..teste = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioRecordData({
  String? sobrenome,
  String? email,
  bool? adm,
  bool? revenda,
  String? plano,
  String? usuario,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? img,
  String? senha,
  DateTime? vencimento,
  String? codIndicacao,
  String? codRevenda,
  bool? teste,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioRecord.serializer,
    UsuarioRecord(
      (u) => u
        ..sobrenome = sobrenome
        ..email = email
        ..adm = adm
        ..revenda = revenda
        ..plano = plano
        ..usuario = usuario
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..img = img
        ..senha = senha
        ..vencimento = vencimento
        ..codIndicacao = codIndicacao
        ..codRevenda = codRevenda
        ..teste = teste,
    ),
  );

  return firestoreData;
}
