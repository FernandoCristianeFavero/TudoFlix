// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlanosRecord> _$planosRecordSerializer =
    new _$PlanosRecordSerializer();

class _$PlanosRecordSerializer implements StructuredSerializer<PlanosRecord> {
  @override
  final Iterable<Type> types = const [PlanosRecord, _$PlanosRecord];
  @override
  final String wireName = 'PlanosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlanosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nomePlano;
    if (value != null) {
      result
        ..add('nome_plano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempoPlano;
    if (value != null) {
      result
        ..add('tempo_plano')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descricaoPlano;
    if (value != null) {
      result
        ..add('descricao_plano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ativoPlano;
    if (value != null) {
      result
        ..add('ativo_plano')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.precoPlano;
    if (value != null) {
      result
        ..add('preco_plano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PlanosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlanosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome_plano':
          result.nomePlano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tempo_plano':
          result.tempoPlano = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'descricao_plano':
          result.descricaoPlano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ativo_plano':
          result.ativoPlano = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'preco_plano':
          result.precoPlano = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlanosRecord extends PlanosRecord {
  @override
  final String? nomePlano;
  @override
  final int? tempoPlano;
  @override
  final String? descricaoPlano;
  @override
  final bool? ativoPlano;
  @override
  final double? precoPlano;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlanosRecord([void Function(PlanosRecordBuilder)? updates]) =>
      (new PlanosRecordBuilder()..update(updates))._build();

  _$PlanosRecord._(
      {this.nomePlano,
      this.tempoPlano,
      this.descricaoPlano,
      this.ativoPlano,
      this.precoPlano,
      this.ffRef})
      : super._();

  @override
  PlanosRecord rebuild(void Function(PlanosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanosRecordBuilder toBuilder() => new PlanosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanosRecord &&
        nomePlano == other.nomePlano &&
        tempoPlano == other.tempoPlano &&
        descricaoPlano == other.descricaoPlano &&
        ativoPlano == other.ativoPlano &&
        precoPlano == other.precoPlano &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nomePlano.hashCode);
    _$hash = $jc(_$hash, tempoPlano.hashCode);
    _$hash = $jc(_$hash, descricaoPlano.hashCode);
    _$hash = $jc(_$hash, ativoPlano.hashCode);
    _$hash = $jc(_$hash, precoPlano.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanosRecord')
          ..add('nomePlano', nomePlano)
          ..add('tempoPlano', tempoPlano)
          ..add('descricaoPlano', descricaoPlano)
          ..add('ativoPlano', ativoPlano)
          ..add('precoPlano', precoPlano)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlanosRecordBuilder
    implements Builder<PlanosRecord, PlanosRecordBuilder> {
  _$PlanosRecord? _$v;

  String? _nomePlano;
  String? get nomePlano => _$this._nomePlano;
  set nomePlano(String? nomePlano) => _$this._nomePlano = nomePlano;

  int? _tempoPlano;
  int? get tempoPlano => _$this._tempoPlano;
  set tempoPlano(int? tempoPlano) => _$this._tempoPlano = tempoPlano;

  String? _descricaoPlano;
  String? get descricaoPlano => _$this._descricaoPlano;
  set descricaoPlano(String? descricaoPlano) =>
      _$this._descricaoPlano = descricaoPlano;

  bool? _ativoPlano;
  bool? get ativoPlano => _$this._ativoPlano;
  set ativoPlano(bool? ativoPlano) => _$this._ativoPlano = ativoPlano;

  double? _precoPlano;
  double? get precoPlano => _$this._precoPlano;
  set precoPlano(double? precoPlano) => _$this._precoPlano = precoPlano;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlanosRecordBuilder() {
    PlanosRecord._initializeBuilder(this);
  }

  PlanosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomePlano = $v.nomePlano;
      _tempoPlano = $v.tempoPlano;
      _descricaoPlano = $v.descricaoPlano;
      _ativoPlano = $v.ativoPlano;
      _precoPlano = $v.precoPlano;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanosRecord;
  }

  @override
  void update(void Function(PlanosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlanosRecord build() => _build();

  _$PlanosRecord _build() {
    final _$result = _$v ??
        new _$PlanosRecord._(
            nomePlano: nomePlano,
            tempoPlano: tempoPlano,
            descricaoPlano: descricaoPlano,
            ativoPlano: ativoPlano,
            precoPlano: precoPlano,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
