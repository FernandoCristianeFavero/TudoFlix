// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_series_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaSeriesRecord> _$categoriaSeriesRecordSerializer =
    new _$CategoriaSeriesRecordSerializer();

class _$CategoriaSeriesRecordSerializer
    implements StructuredSerializer<CategoriaSeriesRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaSeriesRecord,
    _$CategoriaSeriesRecord
  ];
  @override
  final String wireName = 'CategoriaSeriesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaSeriesRecord object,
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
  CategoriaSeriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaSeriesRecordBuilder();

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

class _$CategoriaSeriesRecord extends CategoriaSeriesRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaSeriesRecord(
          [void Function(CategoriaSeriesRecordBuilder)? updates]) =>
      (new CategoriaSeriesRecordBuilder()..update(updates))._build();

  _$CategoriaSeriesRecord._({this.nome, this.ffRef}) : super._();

  @override
  CategoriaSeriesRecord rebuild(
          void Function(CategoriaSeriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaSeriesRecordBuilder toBuilder() =>
      new CategoriaSeriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaSeriesRecord &&
        nome == other.nome &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaSeriesRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaSeriesRecordBuilder
    implements Builder<CategoriaSeriesRecord, CategoriaSeriesRecordBuilder> {
  _$CategoriaSeriesRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaSeriesRecordBuilder() {
    CategoriaSeriesRecord._initializeBuilder(this);
  }

  CategoriaSeriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaSeriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaSeriesRecord;
  }

  @override
  void update(void Function(CategoriaSeriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaSeriesRecord build() => _build();

  _$CategoriaSeriesRecord _build() {
    final _$result =
        _$v ?? new _$CategoriaSeriesRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
