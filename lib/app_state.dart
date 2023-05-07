import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _usuario = prefs.getString('ff_usuario') ?? _usuario;
    _senha = prefs.getString('ff_senha') ?? _senha;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _usuario = 'cXHMKw';
  String get usuario => _usuario;
  set usuario(String _value) {
    _usuario = _value;
    prefs.setString('ff_usuario', _value);
  }

  String _senha = '4ZNpy5';
  String get senha => _senha;
  set senha(String _value) {
    _senha = _value;
    prefs.setString('ff_senha', _value);
  }

  String _CategoriaCanal = '';
  String get CategoriaCanal => _CategoriaCanal;
  set CategoriaCanal(String _value) {
    _CategoriaCanal = _value;
  }

  String _nullo = '';
  String get nullo => _nullo;
  set nullo(String _value) {
    _nullo = _value;
  }

  String _AddImag = '';
  String get AddImag => _AddImag;
  set AddImag(String _value) {
    _AddImag = _value;
  }

  String _dataVencIni = '';
  String get dataVencIni => _dataVencIni;
  set dataVencIni(String _value) {
    _dataVencIni = _value;
  }

  double _ValorPlano = 0.0;
  double get ValorPlano => _ValorPlano;
  set ValorPlano(double _value) {
    _ValorPlano = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
