// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StockStruct extends FFFirebaseStruct {
  StockStruct({
    String? ticker,
    double? price,
    DateTime? lastUpdate,
    List<StockDividendStruct>? dividends,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ticker = ticker,
        _price = price,
        _lastUpdate = lastUpdate,
        _dividends = dividends,
        super(firestoreUtilData);

  // "ticker" field.
  String? _ticker;
  String get ticker => _ticker ?? '';
  set ticker(String? val) => _ticker = val;

  bool hasTicker() => _ticker != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "lastUpdate" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  set lastUpdate(DateTime? val) => _lastUpdate = val;

  bool hasLastUpdate() => _lastUpdate != null;

  // "dividends" field.
  List<StockDividendStruct>? _dividends;
  List<StockDividendStruct> get dividends => _dividends ?? const [];
  set dividends(List<StockDividendStruct>? val) => _dividends = val;

  void updateDividends(Function(List<StockDividendStruct>) updateFn) {
    updateFn(_dividends ??= []);
  }

  bool hasDividends() => _dividends != null;

  static StockStruct fromMap(Map<String, dynamic> data) => StockStruct(
        ticker: data['ticker'] as String?,
        price: castToType<double>(data['price']),
        lastUpdate: data['lastUpdate'] as DateTime?,
        dividends: getStructList(
          data['dividends'],
          StockDividendStruct.fromMap,
        ),
      );

  static StockStruct? maybeFromMap(dynamic data) =>
      data is Map ? StockStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ticker': _ticker,
        'price': _price,
        'lastUpdate': _lastUpdate,
        'dividends': _dividends?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ticker': serializeParam(
          _ticker,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'lastUpdate': serializeParam(
          _lastUpdate,
          ParamType.DateTime,
        ),
        'dividends': serializeParam(
          _dividends,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static StockStruct fromSerializableMap(Map<String, dynamic> data) =>
      StockStruct(
        ticker: deserializeParam(
          data['ticker'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        lastUpdate: deserializeParam(
          data['lastUpdate'],
          ParamType.DateTime,
          false,
        ),
        dividends: deserializeStructParam<StockDividendStruct>(
          data['dividends'],
          ParamType.DataStruct,
          true,
          structBuilder: StockDividendStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StockStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StockStruct &&
        ticker == other.ticker &&
        price == other.price &&
        lastUpdate == other.lastUpdate &&
        listEquality.equals(dividends, other.dividends);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([ticker, price, lastUpdate, dividends]);
}

StockStruct createStockStruct({
  String? ticker,
  double? price,
  DateTime? lastUpdate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StockStruct(
      ticker: ticker,
      price: price,
      lastUpdate: lastUpdate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StockStruct? updateStockStruct(
  StockStruct? stock, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stock
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStockStructData(
  Map<String, dynamic> firestoreData,
  StockStruct? stock,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stock == null) {
    return;
  }
  if (stock.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stock.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stockData = getStockFirestoreData(stock, forFieldValue);
  final nestedData = stockData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stock.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStockFirestoreData(
  StockStruct? stock, [
  bool forFieldValue = false,
]) {
  if (stock == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stock.toMap());

  // Add any Firestore field values
  stock.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStockListFirestoreData(
  List<StockStruct>? stocks,
) =>
    stocks?.map((e) => getStockFirestoreData(e, true)).toList() ?? [];
