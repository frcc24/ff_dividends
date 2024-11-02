// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WalletItemStruct extends FFFirebaseStruct {
  WalletItemStruct({
    String? ticker,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ticker = ticker,
        _quantity = quantity,
        super(firestoreUtilData);

  // "ticker" field.
  String? _ticker;
  String get ticker => _ticker ?? '';
  set ticker(String? val) => _ticker = val;

  bool hasTicker() => _ticker != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static WalletItemStruct fromMap(Map<String, dynamic> data) =>
      WalletItemStruct(
        ticker: data['ticker'] as String?,
        quantity: castToType<int>(data['quantity']),
      );

  static WalletItemStruct? maybeFromMap(dynamic data) => data is Map
      ? WalletItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ticker': _ticker,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ticker': serializeParam(
          _ticker,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static WalletItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      WalletItemStruct(
        ticker: deserializeParam(
          data['ticker'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WalletItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WalletItemStruct &&
        ticker == other.ticker &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([ticker, quantity]);
}

WalletItemStruct createWalletItemStruct({
  String? ticker,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WalletItemStruct(
      ticker: ticker,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WalletItemStruct? updateWalletItemStruct(
  WalletItemStruct? walletItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    walletItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWalletItemStructData(
  Map<String, dynamic> firestoreData,
  WalletItemStruct? walletItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (walletItem == null) {
    return;
  }
  if (walletItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && walletItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final walletItemData = getWalletItemFirestoreData(walletItem, forFieldValue);
  final nestedData = walletItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = walletItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWalletItemFirestoreData(
  WalletItemStruct? walletItem, [
  bool forFieldValue = false,
]) {
  if (walletItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(walletItem.toMap());

  // Add any Firestore field values
  walletItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWalletItemListFirestoreData(
  List<WalletItemStruct>? walletItems,
) =>
    walletItems?.map((e) => getWalletItemFirestoreData(e, true)).toList() ?? [];
