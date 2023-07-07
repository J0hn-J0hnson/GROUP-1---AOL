import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductID" field.
  String? _productID;
  String get productID => _productID ?? '';
  bool hasProductID() => _productID != null;

  // "StoreID" field.
  String? _storeID;
  String get storeID => _storeID ?? '';
  bool hasStoreID() => _storeID != null;

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "ProductPrice" field.
  int? _productPrice;
  int get productPrice => _productPrice ?? 0;
  bool hasProductPrice() => _productPrice != null;

  void _initializeFields() {
    _productID = snapshotData['ProductID'] as String?;
    _storeID = snapshotData['StoreID'] as String?;
    _productName = snapshotData['ProductName'] as String?;
    _productPrice = castToType<int>(snapshotData['ProductPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productID,
  String? storeID,
  String? productName,
  int? productPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductID': productID,
      'StoreID': storeID,
      'ProductName': productName,
      'ProductPrice': productPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productID == e2?.productID &&
        e1?.storeID == e2?.storeID &&
        e1?.productName == e2?.productName &&
        e1?.productPrice == e2?.productPrice;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality()
      .hash([e?.productID, e?.storeID, e?.productName, e?.productPrice]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
