// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeriesRecord> _$seriesRecordSerializer =
    new _$SeriesRecordSerializer();

class _$SeriesRecordSerializer implements StructuredSerializer<SeriesRecord> {
  @override
  final Iterable<Type> types = const [SeriesRecord, _$SeriesRecord];
  @override
  final String wireName = 'SeriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeriesRecord object,
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
    value = object.temporada;
    if (value != null) {
      result
        ..add('temporada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodio;
    if (value != null) {
      result
        ..add('episodio')
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
    value = object.idSerie;
    if (value != null) {
      result
        ..add('id_serie')
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
  SeriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesRecordBuilder();

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
        case 'temporada':
          result.temporada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episodio':
          result.episodio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_serie':
          result.idSerie = serializers.deserialize(value,
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

class _$SeriesRecord extends SeriesRecord {
  @override
  final String? nome;
  @override
  final String? logo;
  @override
  final BuiltList<DocumentReference<Object?>>? favorito;
  @override
  final String? temporada;
  @override
  final String? episodio;
  @override
  final String? categoria;
  @override
  final String? idSerie;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SeriesRecord([void Function(SeriesRecordBuilder)? updates]) =>
      (new SeriesRecordBuilder()..update(updates))._build();

  _$SeriesRecord._(
      {this.nome,
      this.logo,
      this.favorito,
      this.temporada,
      this.episodio,
      this.categoria,
      this.idSerie,
      this.ffRef})
      : super._();

  @override
  SeriesRecord rebuild(void Function(SeriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesRecordBuilder toBuilder() => new SeriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesRecord &&
        nome == other.nome &&
        logo == other.logo &&
        favorito == other.favorito &&
        temporada == other.temporada &&
        episodio == other.episodio &&
        categoria == other.categoria &&
        idSerie == other.idSerie &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, favorito.hashCode);
    _$hash = $jc(_$hash, temporada.hashCode);
    _$hash = $jc(_$hash, episodio.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, idSerie.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesRecord')
          ..add('nome', nome)
          ..add('logo', logo)
          ..add('favorito', favorito)
          ..add('temporada', temporada)
          ..add('episodio', episodio)
          ..add('categoria', categoria)
          ..add('idSerie', idSerie)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SeriesRecordBuilder
    implements Builder<SeriesRecord, SeriesRecordBuilder> {
  _$SeriesRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  ListBuilder<DocumentReference<Object?>>? _favorito;
  ListBuilder<DocumentReference<Object?>> get favorito =>
      _$this._favorito ??= new ListBuilder<DocumentReference<Object?>>();
  set favorito(ListBuilder<DocumentReference<Object?>>? favorito) =>
      _$this._favorito = favorito;

  String? _temporada;
  String? get temporada => _$this._temporada;
  set temporada(String? temporada) => _$this._temporada = temporada;

  String? _episodio;
  String? get episodio => _$this._episodio;
  set episodio(String? episodio) => _$this._episodio = episodio;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _idSerie;
  String? get idSerie => _$this._idSerie;
  set idSerie(String? idSerie) => _$this._idSerie = idSerie;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SeriesRecordBuilder() {
    SeriesRecord._initializeBuilder(this);
  }

  SeriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _logo = $v.logo;
      _favorito = $v.favorito?.toBuilder();
      _temporada = $v.temporada;
      _episodio = $v.episodio;
      _categoria = $v.categoria;
      _idSerie = $v.idSerie;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesRecord;
  }

  @override
  void update(void Function(SeriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesRecord build() => _build();

  _$SeriesRecord _build() {
    _$SeriesRecord _$result;
    try {
      _$result = _$v ??
          new _$SeriesRecord._(
              nome: nome,
              logo: logo,
              favorito: _favorito?.build(),
              temporada: temporada,
              episodio: episodio,
              categoria: categoria,
              idSerie: idSerie,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favorito';
        _favorito?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
