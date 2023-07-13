import 'base_type.dart';
import 'pieces_in.dart';
import 'pieces_out.dart';

class Transcation extends BaseType {
  int? id;
  int? requested;
  int? inserted;
  int? dispensed;
  int? notDispensed;
  String? currency;
  String? operation;
  bool? success;
  String? endType;
  String? moduleType;
  String? startTime;
  String? endTime;
  String? source;
  String? reason;
  String? reference;
  int? userId;
  String? username;
  String? firstName;
  String? lastName;
  bool? powerFail;
  List<PiecesIn>? piecesIn;
  List<PiecesOut>? piecesOut;
  List<dynamic>? piecesTransfered;

  Transcation({
    this.id,
    this.requested,
    this.inserted,
    this.dispensed,
    this.notDispensed,
    this.currency,
    this.operation,
    this.success,
    this.endType,
    this.moduleType,
    this.startTime,
    this.endTime,
    this.source,
    this.reason,
    this.reference,
    this.userId,
    this.username,
    this.firstName,
    this.lastName,
    this.powerFail,
    this.piecesIn,
    this.piecesOut,
    this.piecesTransfered,
  });

  factory Transcation.fromJson(Map<String, dynamic> json) => Transcation(
        id: json['id'] as int?,
        requested: json['requested'] as int?,
        inserted: json['inserted'] as int?,
        dispensed: json['dispensed'] as int?,
        notDispensed: json['notDispensed'] as int?,
        currency: json['currency'] as String?,
        operation: json['operation'] as String?,
        success: json['success'] as bool?,
        endType: json['endType'] as String?,
        moduleType: json['moduleType'] as String?,
        startTime: json['startTime'] as String?,
        endTime: json['endTime'] as String?,
        source: json['source'] as String?,
        reason: json['reason'] as String?,
        reference: json['reference'] as String?,
        userId: json['userId'] as int?,
        username: json['username'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        powerFail: json['powerFail'] as bool?,
        piecesIn: (json['piecesIn'] as List<dynamic>?)
            ?.map((e) => PiecesIn.fromJson(e as Map<String, dynamic>))
            .toList(),
        piecesOut: (json['piecesOut'] as List<dynamic>?)
            ?.map((e) => PiecesOut.fromJson(e as Map<String, dynamic>))
            .toList(),
        piecesTransfered: json['piecesTransfered'] as List<dynamic>?,
      );
  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'requested': requested,
        'inserted': inserted,
        'dispensed': dispensed,
        'notDispensed': notDispensed,
        'currency': currency,
        'operation': operation,
        'success': success,
        'endType': endType,
        'moduleType': moduleType,
        'startTime': startTime,
        'endTime': endTime,
        'source': source,
        'reason': reason,
        'reference': reference,
        'userId': userId,
        'username': username,
        'firstName': firstName,
        'lastName': lastName,
        'powerFail': powerFail,
        'piecesIn': piecesIn?.map((e) => e.toJson()).toList(),
        'piecesOut': piecesOut?.map((e) => e.toJson()).toList(),
        'piecesTransfered': piecesTransfered,
      };
}
