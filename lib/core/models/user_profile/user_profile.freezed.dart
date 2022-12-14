// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call(
      {String id = '',
      String? email,
      String? phoneNumber,
      String? displayName,
      String? firstName,
      String? lastName,
      String? photoURL}) {
    return _UserProfile(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      displayName: displayName,
      firstName: firstName,
      lastName: lastName,
      photoURL: photoURL,
    );
  }

  UserProfile fromJson(Map<String, Object?> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? email,
      String? phoneNumber,
      String? displayName,
      String? firstName,
      String? lastName,
      String? photoURL});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? displayName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? email,
      String? phoneNumber,
      String? displayName,
      String? firstName,
      String? lastName,
      String? photoURL});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? displayName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_UserProfile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile extends _UserProfile {
  _$_UserProfile(
      {this.id = '',
      this.email,
      this.phoneNumber,
      this.displayName,
      this.firstName,
      this.lastName,
      this.photoURL})
      : super._();

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? displayName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, phoneNumber: $phoneNumber, displayName: $displayName, firstName: $firstName, lastName: $lastName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, phoneNumber,
      displayName, firstName, lastName, photoURL);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile extends UserProfile {
  factory _UserProfile(
      {String id,
      String? email,
      String? phoneNumber,
      String? displayName,
      String? firstName,
      String? lastName,
      String? photoURL}) = _$_UserProfile;
  _UserProfile._() : super._();

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get displayName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get photoURL;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
