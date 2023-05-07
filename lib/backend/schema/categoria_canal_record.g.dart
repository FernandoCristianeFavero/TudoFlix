// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_canal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaCanalRecord> _$categoriaCanalRecordSerializer =
    new _$CategoriaCanalRecordSerializer();

class _$CategoriaCanalRecordSerializer
    implements StructuredSerializer<CategoriaCanalRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaCanalRecord,
    _$CategoriaCanalRecord
  ];
  @override
  final String wireName = 'CategoriaCanalRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaCanalRecord object,
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
  CategoriaCanalRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaCanalRecordBuilder();

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

class _$CategoriaCanalRecord extends CategoriaCanalRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaCanalRecord(
          [void Function(CategoriaCanalRecordBuilder)? updates]) =>
      (new CategoriaCanalRecordBuilder()..update(updates))._build();

  _$CategoriaCanalRecord._({this.nome, this.ffRef}) : super._();

  @override
  CategoriaCanalRecord rebuild(
          void Function(CategoriaCanalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaCanalRecordBuilder toBuilder() =>
      new CategoriaCanalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaCanalRecord &&
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
    return (newBuiltValueToStringHelper(r'CategoriaCanalRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaCanalRecordBuilder
    implements Builder<CategoriaCanalRecord, CategoriaCanalRecordBuilder> {
  _$CategoriaCanalRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaCanalRecordBuilder() {
    CategoriaCanalRecord._initializeBuilder(this);
  }

  CategoriaCanalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaCanalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaCanalRecord;
  }

  @override
  void update(void Function(CategoriaCanalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaCanalRecord build() => _build();

  _$CategoriaCanalRecord _build() {
    final _$result =
        _$v ?? new _$CategoriaCanalRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
