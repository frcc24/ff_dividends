// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StockDividendStruct extends FFFirebaseStruct {
  StockDividendStruct({
    String? type,
    String? currrency,
    String? isinCode,
    String? label,
    double? amount,
    DateTime? approvedOn,
    DateTime? tradedUntil,
    DateTime? paymentDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _currrency = currrency,
        _isinCode = isinCode,
        _label = label,
        _amount = amount,
        _approvedOn = approvedOn,
        _tradedUntil = tradedUntil,
        _paymentDate = paymentDate,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "currrency" field.
  String? _currrency;
  String get currrency => _currrency ?? '';
  set currrency(String? val) => _currrency = val;

  bool hasCurrrency() => _currrency != null;

  // "isinCode" field.
  String? _isinCode;
  String get isinCode => _isinCode ?? '';
  set isinCode(String? val) => _isinCode = val;

  bool hasIsinCode() => _isinCode != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "approvedOn" field.
  DateTime? _approvedOn;
  DateTime? get approvedOn => _approvedOn;
  set approvedOn(DateTime? val) => _approvedOn = val;

  bool hasApprovedOn() => _approvedOn != null;

  // "tradedUntil" field.
  DateTime? _tradedUntil;
  DateTime? get tradedUntil => _tradedUntil;
  set tradedUntil(DateTime? val) => _tradedUntil = val;

  bool hasTradedUntil() => _tradedUntil != null;

  // "paymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  set paymentDate(DateTime? val) => _paymentDate = val;

  bool hasPaymentDate() => _paymentDate != null;

  static StockDividendStruct fromMap(Map<String, dynamic> data) =>
      StockDividendStruct(
        type: data['type'] as String?,
        currrency: data['currrency'] as String?,
        isinCode: data['isinCode'] as String?,
        label: data['label'] as String?,
        amount: castToType<double>(data['amount']),
        approvedOn: data['approvedOn'] as DateTime?,
        tradedUntil: data['tradedUntil'] as DateTime?,
        paymentDate: data['paymentDate'] as DateTime?,
      );

  static StockDividendStruct? maybeFromMap(dynamic data) => data is Map
      ? StockDividendStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'currrency': _currrency,
        'isinCode': _isinCode,
        'label': _label,
        'amount': _amount,
        'approvedOn': _approvedOn,
        'tradedUntil': _tradedUntil,
        'paymentDate': _paymentDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'currrency': serializeParam(
          _currrency,
          ParamType.String,
        ),
        'isinCode': serializeParam(
          _isinCode,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'approvedOn': serializeParam(
          _approvedOn,
          ParamType.DateTime,
        ),
        'tradedUntil': serializeParam(
          _tradedUntil,
          ParamType.DateTime,
        ),
        'paymentDate': serializeParam(
          _paymentDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static StockDividendStruct fromSerializableMap(Map<String, dynamic> data) =>
      StockDividendStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        currrency: deserializeParam(
          data['currrency'],
          ParamType.String,
          false,
        ),
        isinCode: deserializeParam(
          data['isinCode'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        approvedOn: deserializeParam(
          data['approvedOn'],
          ParamType.DateTime,
          false,
        ),
        tradedUntil: deserializeParam(
          data['tradedUntil'],
          ParamType.DateTime,
          false,
        ),
        paymentDate: deserializeParam(
          data['paymentDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'StockDividendStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StockDividendStruct &&
        type == other.type &&
        currrency == other.currrency &&
        isinCode == other.isinCode &&
        label == other.label &&
        amount == other.amount &&
        approvedOn == other.approvedOn &&
        tradedUntil == other.tradedUntil &&
        paymentDate == other.paymentDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        currrency,
        isinCode,
        label,
        amount,
        approvedOn,
        tradedUntil,
        paymentDate
      ]);
}

StockDividendStruct createStockDividendStruct({
  String? type,
  String? currrency,
  String? isinCode,
  String? label,
  double? amount,
  DateTime? approvedOn,
  DateTime? tradedUntil,
  DateTime? paymentDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StockDividendStruct(
      type: type,
      currrency: currrency,
      isinCode: isinCode,
      label: label,
      amount: amount,
      approvedOn: approvedOn,
      tradedUntil: tradedUntil,
      paymentDate: paymentDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StockDividendStruct? updateStockDividendStruct(
  StockDividendStruct? stockDividend, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stockDividend
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStockDividendStructData(
  Map<String, dynamic> firestoreData,
  StockDividendStruct? stockDividend,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stockDividend == null) {
    return;
  }
  if (stockDividend.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stockDividend.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stockDividendData =
      getStockDividendFirestoreData(stockDividend, forFieldValue);
  final nestedData =
      stockDividendData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stockDividend.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStockDividendFirestoreData(
  StockDividendStruct? stockDividend, [
  bool forFieldValue = false,
]) {
  if (stockDividend == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stockDividend.toMap());

  // Add any Firestore field values
  stockDividend.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStockDividendListFirestoreData(
  List<StockDividendStruct>? stockDividends,
) =>
    stockDividends
        ?.map((e) => getStockDividendFirestoreData(e, true))
        .toList() ??
    [];
