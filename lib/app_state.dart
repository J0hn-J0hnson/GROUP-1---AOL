import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
    _safeInit(() {
      _stid = prefs.getString('ff_stid') ?? _stid;
    });
    _safeInit(() {
      _CBID = prefs.getStringList('ff_CBID') ?? _CBID;
    });
    _safeInit(() {
      _QRVAL = prefs.getString('ff_QRVAL') ?? _QRVAL;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _count = 0;
  int get count => _count;
  set count(int _value) {
    _count = _value;
  }

  String _stid = '';
  String get stid => _stid;
  set stid(String _value) {
    _stid = _value;
    prefs.setString('ff_stid', _value);
  }

  List<String> _CBID = [];
  List<String> get CBID => _CBID;
  set CBID(List<String> _value) {
    _CBID = _value;
    prefs.setStringList('ff_CBID', _value);
  }

  void addToCBID(String _value) {
    _CBID.add(_value);
    prefs.setStringList('ff_CBID', _CBID);
  }

  void removeFromCBID(String _value) {
    _CBID.remove(_value);
    prefs.setStringList('ff_CBID', _CBID);
  }

  void removeAtIndexFromCBID(int _index) {
    _CBID.removeAt(_index);
    prefs.setStringList('ff_CBID', _CBID);
  }

  void updateCBIDAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _CBID[_index] = updateFn(_CBID[_index]);
    prefs.setStringList('ff_CBID', _CBID);
  }

  String _QRVAL = '';
  String get QRVAL => _QRVAL;
  set QRVAL(String _value) {
    _QRVAL = _value;
    prefs.setString('ff_QRVAL', _value);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
