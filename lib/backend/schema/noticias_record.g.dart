// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noticias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticiasRecord> _$noticiasRecordSerializer =
    new _$NoticiasRecordSerializer();

class _$NoticiasRecordSerializer
    implements StructuredSerializer<NoticiasRecord> {
  @override
  final Iterable<Type> types = const [NoticiasRecord, _$NoticiasRecord];
  @override
  final String wireName = 'NoticiasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticiasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autor;
    if (value != null) {
      result
        ..add('autor')
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
  NoticiasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticiasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'autor':
          result.autor = serializers.deserialize(value,
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

class _$NoticiasRecord extends NoticiasRecord {
  @override
  final String? titulo;
  @override
  final String? descricao;
  @override
  final DateTime? data;
  @override
  final String? img;
  @override
  final String? autor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticiasRecord([void Function(NoticiasRecordBuilder)? updates]) =>
      (new NoticiasRecordBuilder()..update(updates))._build();

  _$NoticiasRecord._(
      {this.titulo,
      this.descricao,
      this.data,
      this.img,
      this.autor,
      this.ffRef})
      : super._();

  @override
  NoticiasRecord rebuild(void Function(NoticiasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticiasRecordBuilder toBuilder() =>
      new NoticiasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticiasRecord &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        data == other.data &&
        img == other.img &&
        autor == other.autor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, autor.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticiasRecord')
          ..add('titulo', titulo)
          ..add('descricao', descricao)
          ..add('data', data)
          ..add('img', img)
          ..add('autor', autor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticiasRecordBuilder
    implements Builder<NoticiasRecord, NoticiasRecordBuilder> {
  _$NoticiasRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _autor;
  String? get autor => _$this._autor;
  set autor(String? autor) => _$this._autor = autor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticiasRecordBuilder() {
    NoticiasRecord._initializeBuilder(this);
  }

  NoticiasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _descricao = $v.descricao;
      _data = $v.data;
      _img = $v.img;
      _autor = $v.autor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticiasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticiasRecord;
  }

  @override
  void update(void Function(NoticiasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticiasRecord build() => _build();

  _$NoticiasRecord _build() {
    final _$result = _$v ??
        new _$NoticiasRecord._(
            titulo: titulo,
            descricao: descricao,
            data: data,
            img: img,
            autor: autor,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
