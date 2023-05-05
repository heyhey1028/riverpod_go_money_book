// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Budget _$BudgetFromJson(Map<String, dynamic> json) {
  return _Budget.fromJson(json);
}

/// @nodoc
mixin _$Budget {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetCopyWith<Budget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res, Budget>;
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res, $Val extends Budget>
    implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BudgetCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$$_BudgetCopyWith(_$_Budget value, $Res Function(_$_Budget) then) =
      __$$_BudgetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class __$$_BudgetCopyWithImpl<$Res>
    extends _$BudgetCopyWithImpl<$Res, _$_Budget>
    implements _$$_BudgetCopyWith<$Res> {
  __$$_BudgetCopyWithImpl(_$_Budget _value, $Res Function(_$_Budget) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$_Budget(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Budget implements _Budget {
  _$_Budget({required this.year, required this.month});

  factory _$_Budget.fromJson(Map<String, dynamic> json) =>
      _$$_BudgetFromJson(json);

  @override
  final int year;
  @override
  final int month;

  @override
  String toString() {
    return 'Budget(year: $year, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Budget &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BudgetCopyWith<_$_Budget> get copyWith =>
      __$$_BudgetCopyWithImpl<_$_Budget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BudgetToJson(
      this,
    );
  }
}

abstract class _Budget implements Budget {
  factory _Budget({required final int year, required final int month}) =
      _$_Budget;

  factory _Budget.fromJson(Map<String, dynamic> json) = _$_Budget.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  @JsonKey(ignore: true)
  _$$_BudgetCopyWith<_$_Budget> get copyWith =>
      throw _privateConstructorUsedError;
}
