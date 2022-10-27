import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MoyaserTransactionModel {
  String? id;
  String? status;
  int? amount;
  int? fee;
  String? currency;
  int? refunded;
  String? refundedAt;
  int? captured;
  String? capturedAt;
  String? voidedAt;
  String? description;
  String? amountFormat;
  String? feeFormat;
  String? refundedFormat;
  String? capturedFormat;
  int? invoiceId;
  String? ip;
  String? callbackUrl;
  String? createdAt;
  String? updatedAt;
  Map<String, dynamic>? metadata;
  Source? source;

  MoyaserTransactionModel({
    this.id,
    this.status,
    this.amount,
    this.fee,
    this.currency,
    this.refunded,
    this.refundedAt,
    this.captured,
    this.capturedAt,
    this.voidedAt,
    this.description,
    this.amountFormat,
    this.feeFormat,
    this.refundedFormat,
    this.capturedFormat,
    this.invoiceId,
    this.ip,
    this.callbackUrl,
    this.createdAt,
    this.updatedAt,
    this.metadata,
    this.source,
  });
  factory MoyaserTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$MoyaserTransactionModelFromJson(json);
  Map<String, dynamic> toJson() => _$MoyaserTransactionModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Source {
  String? type;
  String? company;
  String? name;
  String? number;
  String? message;
  String? transactionUrl;

  Source({
    this.type,
    this.company,
    this.name,
    this.number,
    this.message,
    this.transactionUrl,
  });
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
