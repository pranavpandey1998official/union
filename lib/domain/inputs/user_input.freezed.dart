// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUserInput {
  String get password;
  String get email;

  /// Create a copy of LoginUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginUserInputCopyWith<LoginUserInput> get copyWith =>
      _$LoginUserInputCopyWithImpl<LoginUserInput>(
          this as LoginUserInput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUserInput &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  @override
  String toString() {
    return 'LoginUserInput(password: $password, email: $email)';
  }
}

/// @nodoc
abstract mixin class $LoginUserInputCopyWith<$Res> {
  factory $LoginUserInputCopyWith(
          LoginUserInput value, $Res Function(LoginUserInput) _then) =
      _$LoginUserInputCopyWithImpl;
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class _$LoginUserInputCopyWithImpl<$Res>
    implements $LoginUserInputCopyWith<$Res> {
  _$LoginUserInputCopyWithImpl(this._self, this._then);

  final LoginUserInput _self;
  final $Res Function(LoginUserInput) _then;

  /// Create a copy of LoginUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginUserInput].
extension LoginUserInputPatterns on LoginUserInput {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginUserInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginUserInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginUserInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String password, String email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput() when $default != null:
        return $default(_that.password, _that.email);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String password, String email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput():
        return $default(_that.password, _that.email);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String password, String email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginUserInput() when $default != null:
        return $default(_that.password, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoginUserInput implements LoginUserInput {
  const _LoginUserInput({required this.password, required this.email});

  @override
  final String password;
  @override
  final String email;

  /// Create a copy of LoginUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginUserInputCopyWith<_LoginUserInput> get copyWith =>
      __$LoginUserInputCopyWithImpl<_LoginUserInput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUserInput &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  @override
  String toString() {
    return 'LoginUserInput(password: $password, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$LoginUserInputCopyWith<$Res>
    implements $LoginUserInputCopyWith<$Res> {
  factory _$LoginUserInputCopyWith(
          _LoginUserInput value, $Res Function(_LoginUserInput) _then) =
      __$LoginUserInputCopyWithImpl;
  @override
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class __$LoginUserInputCopyWithImpl<$Res>
    implements _$LoginUserInputCopyWith<$Res> {
  __$LoginUserInputCopyWithImpl(this._self, this._then);

  final _LoginUserInput _self;
  final $Res Function(_LoginUserInput) _then;

  /// Create a copy of LoginUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_LoginUserInput(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SignUpUserInput {
  String get password;
  String get email;
  String get name;
  String get username;

  /// Create a copy of SignUpUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpUserInputCopyWith<SignUpUserInput> get copyWith =>
      _$SignUpUserInputCopyWithImpl<SignUpUserInput>(
          this as SignUpUserInput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpUserInput &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email, name, username);

  @override
  String toString() {
    return 'SignUpUserInput(password: $password, email: $email, name: $name, username: $username)';
  }
}

/// @nodoc
abstract mixin class $SignUpUserInputCopyWith<$Res> {
  factory $SignUpUserInputCopyWith(
          SignUpUserInput value, $Res Function(SignUpUserInput) _then) =
      _$SignUpUserInputCopyWithImpl;
  @useResult
  $Res call({String password, String email, String name, String username});
}

/// @nodoc
class _$SignUpUserInputCopyWithImpl<$Res>
    implements $SignUpUserInputCopyWith<$Res> {
  _$SignUpUserInputCopyWithImpl(this._self, this._then);

  final SignUpUserInput _self;
  final $Res Function(SignUpUserInput) _then;

  /// Create a copy of SignUpUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SignUpUserInput].
extension SignUpUserInputPatterns on SignUpUserInput {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpUserInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpUserInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpUserInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String password, String email, String name, String username)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput() when $default != null:
        return $default(
            _that.password, _that.email, _that.name, _that.username);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String password, String email, String name, String username)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput():
        return $default(
            _that.password, _that.email, _that.name, _that.username);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String password, String email, String name, String username)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpUserInput() when $default != null:
        return $default(
            _that.password, _that.email, _that.name, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignUpUserInput implements SignUpUserInput {
  const _SignUpUserInput(
      {required this.password,
      required this.email,
      required this.name,
      required this.username});

  @override
  final String password;
  @override
  final String email;
  @override
  final String name;
  @override
  final String username;

  /// Create a copy of SignUpUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpUserInputCopyWith<_SignUpUserInput> get copyWith =>
      __$SignUpUserInputCopyWithImpl<_SignUpUserInput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpUserInput &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email, name, username);

  @override
  String toString() {
    return 'SignUpUserInput(password: $password, email: $email, name: $name, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$SignUpUserInputCopyWith<$Res>
    implements $SignUpUserInputCopyWith<$Res> {
  factory _$SignUpUserInputCopyWith(
          _SignUpUserInput value, $Res Function(_SignUpUserInput) _then) =
      __$SignUpUserInputCopyWithImpl;
  @override
  @useResult
  $Res call({String password, String email, String name, String username});
}

/// @nodoc
class __$SignUpUserInputCopyWithImpl<$Res>
    implements _$SignUpUserInputCopyWith<$Res> {
  __$SignUpUserInputCopyWithImpl(this._self, this._then);

  final _SignUpUserInput _self;
  final $Res Function(_SignUpUserInput) _then;

  /// Create a copy of SignUpUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_SignUpUserInput(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
