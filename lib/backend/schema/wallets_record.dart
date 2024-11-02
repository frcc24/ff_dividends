import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletsRecord extends FirestoreRecord {
  WalletsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userUid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "stocks" field.
  List<StockStruct>? _stocks;
  List<StockStruct> get stocks => _stocks ?? const [];
  bool hasStocks() => _stocks != null;

  void _initializeFields() {
    _userUid = snapshotData['userUid'] as String?;
    _stocks = getStructList(
      snapshotData['stocks'],
      StockStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wallets');

  static Stream<WalletsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletsRecord.fromSnapshot(s));

  static Future<WalletsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletsRecord.fromSnapshot(s));

  static WalletsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WalletsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletsRecordData({
  String? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userUid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class WalletsRecordDocumentEquality implements Equality<WalletsRecord> {
  const WalletsRecordDocumentEquality();

  @override
  bool equals(WalletsRecord? e1, WalletsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userUid == e2?.userUid &&
        listEquality.equals(e1?.stocks, e2?.stocks);
  }

  @override
  int hash(WalletsRecord? e) =>
      const ListEquality().hash([e?.userUid, e?.stocks]);

  @override
  bool isValidKey(Object? o) => o is WalletsRecord;
}
