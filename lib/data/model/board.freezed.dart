// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoardTearOff {
  const _$BoardTearOff();

// ignore: unused_element
  _Board call(
      {String href, String name, int userNum, String clazz, String title}) {
    return _Board(
      href: href,
      name: name,
      userNum: userNum,
      clazz: clazz,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  String get href;
  String get name;
  int get userNum;
  String get clazz;
  String get title;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call(
      {String href, String name, int userNum, String clazz, String title});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res> implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  final Board _value;
  // ignore: unused_field
  final $Res Function(Board) _then;

  @override
  $Res call({
    Object href = freezed,
    Object name = freezed,
    Object userNum = freezed,
    Object clazz = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      href: href == freezed ? _value.href : href as String,
      name: name == freezed ? _value.name : name as String,
      userNum: userNum == freezed ? _value.userNum : userNum as int,
      clazz: clazz == freezed ? _value.clazz : clazz as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$BoardCopyWith(_Board value, $Res Function(_Board) then) =
      __$BoardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String href, String name, int userNum, String clazz, String title});
}

/// @nodoc
class __$BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res>
    implements _$BoardCopyWith<$Res> {
  __$BoardCopyWithImpl(_Board _value, $Res Function(_Board) _then)
      : super(_value, (v) => _then(v as _Board));

  @override
  _Board get _value => super._value as _Board;

  @override
  $Res call({
    Object href = freezed,
    Object name = freezed,
    Object userNum = freezed,
    Object clazz = freezed,
    Object title = freezed,
  }) {
    return _then(_Board(
      href: href == freezed ? _value.href : href as String,
      name: name == freezed ? _value.name : name as String,
      userNum: userNum == freezed ? _value.userNum : userNum as int,
      clazz: clazz == freezed ? _value.clazz : clazz as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_Board implements _Board {
  _$_Board({this.href, this.name, this.userNum, this.clazz, this.title});

  @override
  final String href;
  @override
  final String name;
  @override
  final int userNum;
  @override
  final String clazz;
  @override
  final String title;

  @override
  String toString() {
    return 'Board(href: $href, name: $name, userNum: $userNum, clazz: $clazz, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Board &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userNum, userNum) ||
                const DeepCollectionEquality()
                    .equals(other.userNum, userNum)) &&
            (identical(other.clazz, clazz) ||
                const DeepCollectionEquality().equals(other.clazz, clazz)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userNum) ^
      const DeepCollectionEquality().hash(clazz) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board implements Board {
  factory _Board(
      {String href,
      String name,
      int userNum,
      String clazz,
      String title}) = _$_Board;

  @override
  String get href;
  @override
  String get name;
  @override
  int get userNum;
  @override
  String get clazz;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith;
}
