// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoriafilmes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriafilmesRecord> _$categoriafilmesRecordSerializer =
    new _$CategoriafilmesRecordSerializer();

class _$CategoriafilmesRecordSerializer
    implements StructuredSerializer<CategoriafilmesRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriafilmesRecord,
    _$CategoriafilmesRecord
  ];
  @override
  final String wireName = 'CategoriafilmesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriafilmesRecord object,
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
  CategoriafilmesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriafilmesRecordBuilder();

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

class _$CategoriafilmesRecord extends CategoriafilmesRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriafilmesRecord(
          [void Function(CategoriafilmesRecordBuilder)? updates]) =>
      (new CategoriafilmesRecordBuilder()..update(updates))._build();

  _$CategoriafilmesRecord._({this.nome, this.ffRef}) : super._();

  @override
  CategoriafilmesRecord rebuild(
          void Function(CategoriafilmesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriafilmesRecordBuilder toBuilder() =>
      new CategoriafilmesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriafilmesRecord &&
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
    return (newBuiltValueToStringHelper(r'CategoriafilmesRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriafilmesRecordBuilder
    implements Builder<CategoriafilmesRecord, CategoriafilmesRecordBuilder> {
  _$CategoriafilmesRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriafilmesRecordBuilder() {
    CategoriafilmesRecord._initializeBuilder(this);
  }

  CategoriafilmesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriafilmesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriafilmesRecord;
  }

  @override
  void update(void Function(CategoriafilmesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriafilmesRecord build() => _build();

  _$CategoriafilmesRecord _build() {
    final _$result =
        _$v ?? new _$CategoriafilmesRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
