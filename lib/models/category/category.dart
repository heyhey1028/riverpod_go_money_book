import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_go_money_book/models/budget/budget.dart';

part 'category.freezed.dart';

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
