import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';
// json_serializable で生成されたファイルを読み込む
part 'budget.g.dart';

@freezed
class Budget with _$Budget {
  factory Budget({
    required int year,
    required int month,
  }) = _Budget;

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
}
