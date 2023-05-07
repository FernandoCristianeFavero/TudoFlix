// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sobrenome;
    if (value != null) {
      result
        ..add('sobrenome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adm;
    if (value != null) {
      result
        ..add('adm')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.revenda;
    if (value != null) {
      result
        ..add('revenda')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.plano;
    if (value != null) {
      result
        ..add('plano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.senha;
    if (value != null) {
      result
        ..add('senha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vencimento;
    if (value != null) {
      result
        ..add('vencimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.codIndicacao;
    if (value != null) {
      result
        ..add('cod_indicacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codRevenda;
    if (value != null) {
      result
        ..add('cod_revenda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teste;
    if (value != null) {
      result
        ..add('teste')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sobrenome':
          result.sobrenome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adm':
          result.adm = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'revenda':
          result.revenda = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'plano':
          result.plano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'senha':
          result.senha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vencimento':
          result.vencimento = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cod_indicacao':
          result.codIndicacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cod_revenda':
          result.codRevenda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teste':
          result.teste = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String? sobrenome;
  @override
  final String? email;
  @override
  final bool? adm;
  @override
  final bool? revenda;
  @override
  final String? plano;
  @override
  final String? usuario;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? img;
  @override
  final String? senha;
  @override
  final DateTime? vencimento;
  @override
  final String? codIndicacao;
  @override
  final String? codRevenda;
  @override
  final bool? teste;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder)? updates]) =>
      (new UsuarioRecordBuilder()..update(updates))._build();

  _$UsuarioRecord._(
      {this.sobrenome,
      this.email,
      this.adm,
      this.revenda,
      this.plano,
      this.usuario,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.img,
      this.senha,
      this.vencimento,
      this.codIndicacao,
      this.codRevenda,
      this.teste,
      this.ffRef})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        sobrenome == other.sobrenome &&
        email == other.email &&
        adm == other.adm &&
        revenda == other.revenda &&
        plano == other.plano &&
        usuario == other.usuario &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        img == other.img &&
        senha == other.senha &&
        vencimento == other.vencimento &&
        codIndicacao == other.codIndicacao &&
        codRevenda == other.codRevenda &&
        teste == other.teste &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sobrenome.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, adm.hashCode);
    _$hash = $jc(_$hash, revenda.hashCode);
    _$hash = $jc(_$hash, plano.hashCode);
    _$hash = $jc(_$hash, usuario.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, senha.hashCode);
    _$hash = $jc(_$hash, vencimento.hashCode);
    _$hash = $jc(_$hash, codIndicacao.hashCode);
    _$hash = $jc(_$hash, codRevenda.hashCode);
    _$hash = $jc(_$hash, teste.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioRecord')
          ..add('sobrenome', sobrenome)
          ..add('email', email)
          ..add('adm', adm)
          ..add('revenda', revenda)
          ..add('plano', plano)
          ..add('usuario', usuario)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('img', img)
          ..add('senha', senha)
          ..add('vencimento', vencimento)
          ..add('codIndicacao', codIndicacao)
          ..add('codRevenda', codRevenda)
          ..add('teste', teste)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord? _$v;

  String? _sobrenome;
  String? get sobrenome => _$this._sobrenome;
  set sobrenome(String? sobrenome) => _$this._sobrenome = sobrenome;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _adm;
  bool? get adm => _$this._adm;
  set adm(bool? adm) => _$this._adm = adm;

  bool? _revenda;
  bool? get revenda => _$this._revenda;
  set revenda(bool? revenda) => _$this._revenda = revenda;

  String? _plano;
  String? get plano => _$this._plano;
  set plano(String? plano) => _$this._plano = plano;

  String? _usuario;
  String? get usuario => _$this._usuario;
  set usuario(String? usuario) => _$this._usuario = usuario;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _senha;
  String? get senha => _$this._senha;
  set senha(String? senha) => _$this._senha = senha;

  DateTime? _vencimento;
  DateTime? get vencimento => _$this._vencimento;
  set vencimento(DateTime? vencimento) => _$this._vencimento = vencimento;

  String? _codIndicacao;
  String? get codIndicacao => _$this._codIndicacao;
  set codIndicacao(String? codIndicacao) => _$this._codIndicacao = codIndicacao;

  String? _codRevenda;
  String? get codRevenda => _$this._codRevenda;
  set codRevenda(String? codRevenda) => _$this._codRevenda = codRevenda;

  bool? _teste;
  bool? get teste => _$this._teste;
  set teste(bool? teste) => _$this._teste = teste;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sobrenome = $v.sobrenome;
      _email = $v.email;
      _adm = $v.adm;
      _revenda = $v.revenda;
      _plano = $v.plano;
      _usuario = $v.usuario;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _img = $v.img;
      _senha = $v.senha;
      _vencimento = $v.vencimento;
      _codIndicacao = $v.codIndicacao;
      _codRevenda = $v.codRevenda;
      _teste = $v.teste;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioRecord build() => _build();

  _$UsuarioRecord _build() {
    final _$result = _$v ??
        new _$UsuarioRecord._(
            sobrenome: sobrenome,
            email: email,
            adm: adm,
            revenda: revenda,
            plano: plano,
            usuario: usuario,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            img: img,
            senha: senha,
            vencimento: vencimento,
            codIndicacao: codIndicacao,
            codRevenda: codRevenda,
            teste: teste,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
