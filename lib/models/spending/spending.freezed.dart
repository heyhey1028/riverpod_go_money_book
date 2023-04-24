// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Spending _$SpendingFromJson(Map<String, dynamic> json) {
  return _Spending.fromJson(json);
}

/// @nodoc
mixin _$Spending {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  PaymentCycle get paymentCycle => throw _privateConstructorUsedError;
  List<DateTime> get paymentDueDates => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendingCopyWith<Spending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingCopyWith<$Res> {
  factory $SpendingCopyWith(Spending value, $Res Function(Spending) then) =
      _$SpendingCopyWithImpl<$Res, Spending>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String details,
      String category,
      int amount,
      PaymentCycle paymentCycle,
      List<DateTime> paymentDueDates,
      DateTime createdAt});
}

/// @nodoc
class _$SpendingCopyWithImpl<$Res, $Val extends Spending>
    implements $SpendingCopyWith<$Res> {
  _$SpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? details = null,
    Object? category = null,
    Object? amount = null,
    Object? paymentCycle = null,
    Object? paymentDueDates = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCycle: null == paymentCycle
          ? _value.paymentCycle
          : paymentCycle // ignore: cast_nullable_to_non_nullable
              as PaymentCycle,
      paymentDueDates: null == paymentDueDates
          ? _value.paymentDueDates
          : paymentDueDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpendingCopyWith<$Res> implements $SpendingCopyWith<$Res> {
  factory _$$_SpendingCopyWith(
          _$_Spending value, $Res Function(_$_Spending) then) =
      __$$_SpendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String details,
      String category,
      int amount,
      PaymentCycle paymentCycle,
      List<DateTime> paymentDueDates,
      DateTime createdAt});
}

/// @nodoc
class __$$_SpendingCopyWithImpl<$Res>
    extends _$SpendingCopyWithImpl<$Res, _$_Spending>
    implements _$$_SpendingCopyWith<$Res> {
  __$$_SpendingCopyWithImpl(
      _$_Spending _value, $Res Function(_$_Spending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? details = null,
    Object? category = null,
    Object? amount = null,
    Object? paymentCycle = null,
    Object? paymentDueDates = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Spending(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCycle: null == paymentCycle
          ? _value.paymentCycle
          : paymentCycle // ignore: cast_nullable_to_non_nullable
              as PaymentCycle,
      paymentDueDates: null == paymentDueDates
          ? _value._paymentDueDates
          : paymentDueDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Spending implements _Spending {
  _$_Spending(
      {this.id,
      required this.name,
      required this.details,
      required this.category,
      required this.amount,
      required this.paymentCycle,
      required final List<DateTime> paymentDueDates,
      required this.createdAt})
      : _paymentDueDates = paymentDueDates;

  factory _$_Spending.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String details;
  @override
  final String category;
  @override
  final int amount;
  @override
  final PaymentCycle paymentCycle;
  final List<DateTime> _paymentDueDates;
  @override
  List<DateTime> get paymentDueDates {
    if (_paymentDueDates is EqualUnmodifiableListView) return _paymentDueDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentDueDates);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Spending(id: $id, name: $name, details: $details, category: $category, amount: $amount, paymentCycle: $paymentCycle, paymentDueDates: $paymentDueDates, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spending &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentCycle, paymentCycle) ||
                other.paymentCycle == paymentCycle) &&
            const DeepCollectionEquality()
                .equals(other._paymentDueDates, _paymentDueDates) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      details,
      category,
      amount,
      paymentCycle,
      const DeepCollectionEquality().hash(_paymentDueDates),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      __$$_SpendingCopyWithImpl<_$_Spending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendingToJson(
      this,
    );
  }
}

abstract class _Spending implements Spending {
  factory _Spending(
      {final String? id,
      required final String name,
      required final String details,
      required final String category,
      required final int amount,
      required final PaymentCycle paymentCycle,
      required final List<DateTime> paymentDueDates,
      required final DateTime createdAt}) = _$_Spending;

  factory _Spending.fromJson(Map<String, dynamic> json) = _$_Spending.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get details;
  @override
  String get category;
  @override
  int get amount;
  @override
  PaymentCycle get paymentCycle;
  @override
  List<DateTime> get paymentDueDates;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      throw _privateConstructorUsedError;
}
