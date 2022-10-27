// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoyaserTransactionModel _$MoyaserTransactionModelFromJson(
        Map<String, dynamic> json) =>
    MoyaserTransactionModel(
      id: json['id'] as String?,
      status: json['status'] as String?,
      amount: json['amount'] as int?,
      fee: json['fee'] as int?,
      currency: json['currency'] as String?,
      refunded: json['refunded'] as int?,
      refundedAt: json['refunded_at'] as String?,
      captured: json['captured'] as int?,
      capturedAt: json['captured_at'] as String?,
      voidedAt: json['voided_at'] as String?,
      description: json['description'] as String?,
      amountFormat: json['amount_format'] as String?,
      feeFormat: json['fee_format'] as String?,
      refundedFormat: json['refunded_format'] as String?,
      capturedFormat: json['captured_format'] as String?,
      invoiceId: json['invoice_id'] as int?,
      ip: json['ip'] as String?,
      callbackUrl: json['callback_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoyaserTransactionModelToJson(
        MoyaserTransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'amount': instance.amount,
      'fee': instance.fee,
      'currency': instance.currency,
      'refunded': instance.refunded,
      'refunded_at': instance.refundedAt,
      'captured': instance.captured,
      'captured_at': instance.capturedAt,
      'voided_at': instance.voidedAt,
      'description': instance.description,
      'amount_format': instance.amountFormat,
      'fee_format': instance.feeFormat,
      'refunded_format': instance.refundedFormat,
      'captured_format': instance.capturedFormat,
      'invoice_id': instance.invoiceId,
      'ip': instance.ip,
      'callback_url': instance.callbackUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'metadata': instance.metadata,
      'source': instance.source?.toJson(),
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      type: json['type'] as String?,
      company: json['company'] as String?,
      name: json['name'] as String?,
      number: json['number'] as String?,
      message: json['message'] as String?,
      transactionUrl: json['transaction_url'] as String?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'type': instance.type,
      'company': instance.company,
      'name': instance.name,
      'number': instance.number,
      'message': instance.message,
      'transaction_url': instance.transactionUrl,
    };
