import 'base_type.dart';

class ActiveTransaction extends BaseType {
  int? id;
  String? operation;
  String? operationInfo;
  int? requested;
  int? inserted;
  int? dispensed;
  int? notDispensed;
  String? currency;
  int? queuePosition;
  int? operationPercentage;
  String? status;
  List<dynamic>? denominationsInserted;
  List<dynamic>? denominationsDispensed;
  List<dynamic>? denominationsTransfered;

  ActiveTransaction({
    this.id,
    this.operation,
    this.operationInfo,
    this.requested,
    this.inserted,
    this.dispensed,
    this.notDispensed,
    this.currency,
    this.queuePosition,
    this.operationPercentage,
    this.status,
    this.denominationsInserted,
    this.denominationsDispensed,
    this.denominationsTransfered,
  });

  factory ActiveTransaction.fromJson(Map<String, dynamic> json) {
    return ActiveTransaction(
      id: json['id'] as int?,
      operation: json['operation'] as String?,
      operationInfo: json['operationInfo'] as String?,
      requested: json['requested'] as int?,
      inserted: json['inserted'] as int?,
      dispensed: json['dispensed'] as int?,
      notDispensed: json['notDispensed'] as int?,
      currency: json['currency'] as String?,
      queuePosition: json['queuePosition'] as int?,
      operationPercentage: json['operationPercentage'] as int?,
      status: json['status'] as String?,
      denominationsInserted: json['denominationsInserted'] as List<dynamic>?,
      denominationsDispensed: json['denominationsDispensed'] as List<dynamic>?,
      denominationsTransfered:
          json['denominationsTransfered'] as List<dynamic>?,
    );
  }
  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'operation': operation,
        'operationInfo': operationInfo,
        'requested': requested,
        'inserted': inserted,
        'dispensed': dispensed,
        'notDispensed': notDispensed,
        'currency': currency,
        'queuePosition': queuePosition,
        'operationPercentage': operationPercentage,
        'status': status,
        'denominationsInserted': denominationsInserted,
        'denominationsDispensed': denominationsDispensed,
        'denominationsTransfered': denominationsTransfered,
      };
}
