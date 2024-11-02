import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StocksRecord extends FirestoreRecord {
  StocksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stock" field.
  StockStruct? _stock;
  StockStruct get stock => _stock ?? StockStruct();
  bool hasStock() => _stock != null;

  void _initializeFields() {
    _stock = StockStruct.maybeFromMap(snapshotData['stock']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stocks');

  static Stream<StocksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StocksRecord.fromSnapshot(s));

  static Future<StocksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StocksRecord.fromSnapshot(s));

  static StocksRecord fromSnapshot(DocumentSnapshot snapshot) => StocksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StocksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StocksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StocksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StocksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStocksRecordData({
  StockStruct? stock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stock': StockStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "stock" field.
  addStockStructData(firestoreData, stock, 'stock');

  return firestoreData;
}

class StocksRecordDocumentEquality implements Equality<StocksRecord> {
  const StocksRecordDocumentEquality();

  @override
  bool equals(StocksRecord? e1, StocksRecord? e2) {
    return e1?.stock == e2?.stock;
  }

  @override
  int hash(StocksRecord? e) => const ListEquality().hash([e?.stock]);

  @override
  bool isValidKey(Object? o) => o is StocksRecord;
}
