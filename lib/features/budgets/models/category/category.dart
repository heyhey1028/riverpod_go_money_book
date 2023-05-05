import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_go_money_book/features/budgets/models/budget/budget.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    String? id,
    required String name,
    required Budget budget,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
