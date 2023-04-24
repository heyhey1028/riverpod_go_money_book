import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_go_money_book/types/payment_cycle.dart';

part 'spending.freezed.dart';
part 'spending.g.dart';

@freezed
class Spending with _$Spending {
  factory Spending({
    String? id,
    required String name,
    required String details,
    required String category,
    required int amount,
    required PaymentCycle paymentCycle,
    required List<DateTime> paymentDueDates,
    required DateTime createdAt,
  }) = _Spending;

  factory Spending.fromJson(Map<String, dynamic> json) =>
      _$SpendingFromJson(json);
}
