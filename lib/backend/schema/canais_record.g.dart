// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canais_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CanaisRecord> _$canaisRecordSerializer =
    new _$CanaisRecordSerializer();

class _$CanaisRecordSerializer implements StructuredSerializer<CanaisRecord> {
  @override
  final Iterable<Type> types = const [CanaisRecord, _$CanaisRecord];
  @override
  final String wireName = 'CanaisRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CanaisRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCanal;
    if (value != null) {
      result
        ..add('id_canal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorito;
    if (value != null) {
      result
        ..add('favorito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CanaisRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CanaisRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_canal':
          result.idCanal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorito':
          result.favorito.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CanaisRecord extends CanaisRecord {
  @override
  final String? nome;
  @override
  final String? categoria;
  @override
  final String? idCanal;
  @override
  final String? logo;
  @override
  final BuiltList<DocumentReference<Object?>>? favorito;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CanaisRecord([void Function(CanaisRecordBuilder)? updates]) =>
      (new CanaisRecordBuilder()..update(updates))._build();

  _$CanaisRecord._(
      {this.nome,
      this.categoria,
      this.idCanal,
      this.logo,
      this.favorito,
      this.ffRef})
      : super._();

  @override
  CanaisRecord rebuild(void Function(CanaisRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CanaisRecordBuilder toBuilder() => new CanaisRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CanaisRecord &&
        nome == other.nome &&
        categoria == other.categoria &&
        idCanal == other.idCanal &&
        logo == other.logo &&
        favorito == other.favorito &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, idCanal.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, favorito.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CanaisRecord')
          ..add('nome', nome)
          ..add('categoria', categoria)
          ..add('idCanal', idCanal)
          ..add('logo', logo)
          ..add('favorito', favorito)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CanaisRecordBuilder
    implements Builder<CanaisRecord, CanaisRecordBuilder> {
  _$CanaisRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _idCanal;
  String? get idCanal => _$this._idCanal;
  set idCanal(String? idCanal) => _$this._idCanal = idCanal;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  ListBuilder<DocumentReference<Object?>>? _favorito;
  ListBuilder<DocumentReference<Object?>> get favorito =>
      _$this._favorito ??= new ListBuilder<DocumentReference<Object?>>();
  set favorito(ListBuilder<DocumentReference<Object?>>? favorito) =>
      _$this._favorito = favorito;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CanaisRecordBuilder() {
    CanaisRecord._initializeBuilder(this);
  }

  CanaisRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _categoria = $v.categoria;
      _idCanal = $v.idCanal;
      _logo = $v.logo;
      _favorito = $v.favorito?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CanaisRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CanaisRecord;
  }

  @override
  void update(void Function(CanaisRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CanaisRecord build() => _build();

  _$CanaisRecord _build() {
    _$CanaisRecord _$result;
    try {
      _$result = _$v ??
          new _$CanaisRecord._(
              nome: nome,
              categoria: categoria,
              idCanal: idCanal,
              logo: logo,
              favorito: _favorito?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favorito';
        _favorito?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CanaisRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
