// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Spending _$$_SpendingFromJson(Map<String, dynamic> json) => _$_Spending(
      id: json['id'] as String?,
      name: json['name'] as String,
      details: json['details'] as String,
      category: json['category'] as String,
      amount: json['amount'] as int,
      paymentCycle: $enumDecode(_$PaymentCycleEnumMap, json['paymentCycle']),
      paymentDueDates: (json['paymentDueDates'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_SpendingToJson(_$_Spending instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
      'category': instance.category,
      'amount': instance.amount,
      'paymentCycle': _$PaymentCycleEnumMap[instance.paymentCycle]!,
      'paymentDueDates':
          instance.paymentDueDates.map((e) => e.toIso8601String()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$PaymentCycleEnumMap = {
  PaymentCycle.month: 'month',
  PaymentCycle.year: 'year',
};
