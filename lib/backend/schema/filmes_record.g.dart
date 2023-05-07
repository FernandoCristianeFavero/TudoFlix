// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filmes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilmesRecord> _$filmesRecordSerializer =
    new _$FilmesRecordSerializer();

class _$FilmesRecordSerializer implements StructuredSerializer<FilmesRecord> {
  @override
  final Iterable<Type> types = const [FilmesRecord, _$FilmesRecord];
  @override
  final String wireName = 'FilmesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FilmesRecord object,
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
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sinopse;
    if (value != null) {
      result
        ..add('sinopse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trailer;
    if (value != null) {
      result
        ..add('trailer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idFilme;
    if (value != null) {
      result
        ..add('id_filme')
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
  FilmesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilmesRecordBuilder();

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
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sinopse':
          result.sinopse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'trailer':
          result.trailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_filme':
          result.idFilme = serializers.deserialize(value,
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

class _$FilmesRecord extends FilmesRecord {
  @override
  final String? nome;
  @override
  final String? categoria;
  @override
  final String? logo;
  @override
  final String? sinopse;
  @override
  final String? trailer;
  @override
  final String? idFilme;
  @override
  final BuiltList<DocumentReference<Object?>>? favorito;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FilmesRecord([void Function(FilmesRecordBuilder)? updates]) =>
      (new FilmesRecordBuilder()..update(updates))._build();

  _$FilmesRecord._(
      {this.nome,
      this.categoria,
      this.logo,
      this.sinopse,
      this.trailer,
      this.idFilme,
      this.favorito,
      this.ffRef})
      : super._();

  @override
  FilmesRecord rebuild(void Function(FilmesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmesRecordBuilder toBuilder() => new FilmesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmesRecord &&
        nome == other.nome &&
        categoria == other.categoria &&
        logo == other.logo &&
        sinopse == other.sinopse &&
        trailer == other.trailer &&
        idFilme == other.idFilme &&
        favorito == other.favorito &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, sinopse.hashCode);
    _$hash = $jc(_$hash, trailer.hashCode);
    _$hash = $jc(_$hash, idFilme.hashCode);
    _$hash = $jc(_$hash, favorito.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmesRecord')
          ..add('nome', nome)
          ..add('categoria', categoria)
          ..add('logo', logo)
          ..add('sinopse', sinopse)
          ..add('trailer', trailer)
          ..add('idFilme', idFilme)
          ..add('favorito', favorito)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FilmesRecordBuilder
    implements Builder<FilmesRecord, FilmesRecordBuilder> {
  _$FilmesRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _sinopse;
  String? get sinopse => _$this._sinopse;
  set sinopse(String? sinopse) => _$this._sinopse = sinopse;

  String? _trailer;
  String? get trailer => _$this._trailer;
  set trailer(String? trailer) => _$this._trailer = trailer;

  String? _idFilme;
  String? get idFilme => _$this._idFilme;
  set idFilme(String? idFilme) => _$this._idFilme = idFilme;

  ListBuilder<DocumentReference<Object?>>? _favorito;
  ListBuilder<DocumentReference<Object?>> get favorito =>
      _$this._favorito ??= new ListBuilder<DocumentReference<Object?>>();
  set favorito(ListBuilder<DocumentReference<Object?>>? favorito) =>
      _$this._favorito = favorito;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FilmesRecordBuilder() {
    FilmesRecord._initializeBuilder(this);
  }

  FilmesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _categoria = $v.categoria;
      _logo = $v.logo;
      _sinopse = $v.sinopse;
      _trailer = $v.trailer;
      _idFilme = $v.idFilme;
      _favorito = $v.favorito?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilmesRecord;
  }

  @override
  void update(void Function(FilmesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmesRecord build() => _build();

  _$FilmesRecord _build() {
    _$FilmesRecord _$result;
    try {
      _$result = _$v ??
          new _$FilmesRecord._(
              nome: nome,
              categoria: categoria,
              logo: logo,
              sinopse: sinopse,
              trailer: trailer,
              idFilme: idFilme,
              favorito: _favorito?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favorito';
        _favorito?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FilmesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
