import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreRecord extends FirestoreRecord {
  StoreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "StoreID" field.
  String? _storeID;
  String get storeID => _storeID ?? '';
  bool hasStoreID() => _storeID != null;

  // "Products" field.
  List<DocumentReference>? _products;
  List<DocumentReference> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  void _initializeFields() {
    _storeID = snapshotData['StoreID'] as String?;
    _products = getDataList(snapshotData['Products']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Store');

  static Stream<StoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoreRecord.fromSnapshot(s));

  static Future<StoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoreRecord.fromSnapshot(s));

  static StoreRecord fromSnapshot(DocumentSnapshot snapshot) => StoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoreRecordData({
  String? storeID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'StoreID': storeID,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoreRecordDocumentEquality implements Equality<StoreRecord> {
  const StoreRecordDocumentEquality();

  @override
  bool equals(StoreRecord? e1, StoreRecord? e2) {
    const listEquality = ListEquality();
    return e1?.storeID == e2?.storeID &&
        listEquality.equals(e1?.products, e2?.products);
  }

  @override
  int hash(StoreRecord? e) =>
      const ListEquality().hash([e?.storeID, e?.products]);

  @override
  bool isValidKey(Object? o) => o is StoreRecord;
}
