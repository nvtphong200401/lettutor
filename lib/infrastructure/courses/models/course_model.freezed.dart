// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCoursesResult _$ListCoursesResultFromJson(Map<String, dynamic> json) {
  return _ListCoursesResult.fromJson(json);
}

/// @nodoc
mixin _$ListCoursesResult {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCoursesResultCopyWith<ListCoursesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCoursesResultCopyWith<$Res> {
  factory $ListCoursesResultCopyWith(
          ListCoursesResult value, $Res Function(ListCoursesResult) then) =
      _$ListCoursesResultCopyWithImpl<$Res, ListCoursesResult>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListCoursesResultCopyWithImpl<$Res, $Val extends ListCoursesResult>
    implements $ListCoursesResultCopyWith<$Res> {
  _$ListCoursesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListCoursesResultCopyWith<$Res>
    implements $ListCoursesResultCopyWith<$Res> {
  factory _$$_ListCoursesResultCopyWith(_$_ListCoursesResult value,
          $Res Function(_$_ListCoursesResult) then) =
      __$$_ListCoursesResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ListCoursesResultCopyWithImpl<$Res>
    extends _$ListCoursesResultCopyWithImpl<$Res, _$_ListCoursesResult>
    implements _$$_ListCoursesResultCopyWith<$Res> {
  __$$_ListCoursesResultCopyWithImpl(
      _$_ListCoursesResult _value, $Res Function(_$_ListCoursesResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ListCoursesResult(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCoursesResult implements _ListCoursesResult {
  const _$_ListCoursesResult({this.message, this.data});

  factory _$_ListCoursesResult.fromJson(Map<String, dynamic> json) =>
      _$$_ListCoursesResultFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ListCoursesResult(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCoursesResult &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCoursesResultCopyWith<_$_ListCoursesResult> get copyWith =>
      __$$_ListCoursesResultCopyWithImpl<_$_ListCoursesResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCoursesResultToJson(
      this,
    );
  }
}

abstract class _ListCoursesResult implements ListCoursesResult {
  const factory _ListCoursesResult({final String? message, final Data? data}) =
      _$_ListCoursesResult;

  factory _ListCoursesResult.fromJson(Map<String, dynamic> json) =
      _$_ListCoursesResult.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListCoursesResultCopyWith<_$_ListCoursesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get count => throw _privateConstructorUsedError;
  List<CourseModel>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int? count, List<CourseModel>? rows});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<CourseModel>? rows});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_Data(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.count, final List<CourseModel>? rows}) : _rows = rows;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? count;
  final List<CourseModel>? _rows;
  @override
  List<CourseModel>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final int? count, final List<CourseModel>? rows}) =
      _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get count;
  @override
  List<CourseModel>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get otherDetails => throw _privateConstructorUsedError;
  int? get defaultPrice => throw _privateConstructorUsedError;
  int? get coursePrice => throw _privateConstructorUsedError;
  String? get courseType => throw _privateConstructorUsedError;
  String? get sectionType => throw _privateConstructorUsedError;
  bool? get visible => throw _privateConstructorUsedError;
  String? get displayOrder => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Topic>? get topics => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imageUrl,
      String? level,
      String? reason,
      String? purpose,
      String? otherDetails,
      int? defaultPrice,
      int? coursePrice,
      String? courseType,
      String? sectionType,
      bool? visible,
      String? displayOrder,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<Topic>? topics,
      List<Category>? categories});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? otherDetails = freezed,
    Object? defaultPrice = freezed,
    Object? coursePrice = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      otherDetails: freezed == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      coursePrice: freezed == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imageUrl,
      String? level,
      String? reason,
      String? purpose,
      String? otherDetails,
      int? defaultPrice,
      int? coursePrice,
      String? courseType,
      String? sectionType,
      bool? visible,
      String? displayOrder,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<Topic>? topics,
      List<Category>? categories});
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$_CourseModel>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? otherDetails = freezed,
    Object? defaultPrice = freezed,
    Object? coursePrice = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_CourseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      otherDetails: freezed == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      coursePrice: freezed == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel implements _CourseModel {
  const _$_CourseModel(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.level,
      this.reason,
      this.purpose,
      this.otherDetails,
      this.defaultPrice,
      this.coursePrice,
      this.courseType,
      this.sectionType,
      this.visible,
      this.displayOrder,
      this.createdAt,
      this.updatedAt,
      final List<Topic>? topics,
      final List<Category>? categories})
      : _topics = topics,
        _categories = categories;

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? level;
  @override
  final String? reason;
  @override
  final String? purpose;
  @override
  final String? otherDetails;
  @override
  final int? defaultPrice;
  @override
  final int? coursePrice;
  @override
  final String? courseType;
  @override
  final String? sectionType;
  @override
  final bool? visible;
  @override
  final String? displayOrder;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<Topic>? _topics;
  @override
  List<Topic>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, level: $level, reason: $reason, purpose: $purpose, otherDetails: $otherDetails, defaultPrice: $defaultPrice, coursePrice: $coursePrice, courseType: $courseType, sectionType: $sectionType, visible: $visible, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, topics: $topics, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.otherDetails, otherDetails) ||
                other.otherDetails == otherDetails) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice) &&
            (identical(other.coursePrice, coursePrice) ||
                other.coursePrice == coursePrice) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      level,
      reason,
      purpose,
      otherDetails,
      defaultPrice,
      coursePrice,
      courseType,
      sectionType,
      visible,
      displayOrder,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {final String? id,
      final String? name,
      final String? description,
      final String? imageUrl,
      final String? level,
      final String? reason,
      final String? purpose,
      final String? otherDetails,
      final int? defaultPrice,
      final int? coursePrice,
      final String? courseType,
      final String? sectionType,
      final bool? visible,
      final String? displayOrder,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final List<Topic>? topics,
      final List<Category>? categories}) = _$_CourseModel;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get level;
  @override
  String? get reason;
  @override
  String? get purpose;
  @override
  String? get otherDetails;
  @override
  int? get defaultPrice;
  @override
  int? get coursePrice;
  @override
  String? get courseType;
  @override
  String? get sectionType;
  @override
  bool? get visible;
  @override
  String? get displayOrder;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<Topic>? get topics;
  @override
  List<Category>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get displayOrder => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? key,
      String? displayOrder,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? key,
      String? displayOrder,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Category(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {this.id,
      this.title,
      this.description,
      this.key,
      this.displayOrder,
      this.createdAt,
      this.updatedAt});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? key;
  @override
  final String? displayOrder;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Category(id: $id, title: $title, description: $description, key: $key, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, key,
      displayOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {final String? id,
      final String? title,
      final String? description,
      final String? key,
      final String? displayOrder,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get key;
  @override
  String? get displayOrder;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String? get id => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;
  int? get orderCourse => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nameFile => throw _privateConstructorUsedError;
  int? get numberOfPages => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String? id,
      String? courseId,
      int? orderCourse,
      String? name,
      String? nameFile,
      int? numberOfPages,
      String? description,
      String? videoUrl,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? orderCourse = freezed,
    Object? name = freezed,
    Object? nameFile = freezed,
    Object? numberOfPages = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCourse: freezed == orderCourse
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameFile: freezed == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$_TopicCopyWith(_$_Topic value, $Res Function(_$_Topic) then) =
      __$$_TopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? courseId,
      int? orderCourse,
      String? name,
      String? nameFile,
      int? numberOfPages,
      String? description,
      String? videoUrl,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res, _$_Topic>
    implements _$$_TopicCopyWith<$Res> {
  __$$_TopicCopyWithImpl(_$_Topic _value, $Res Function(_$_Topic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? orderCourse = freezed,
    Object? name = freezed,
    Object? nameFile = freezed,
    Object? numberOfPages = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Topic(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCourse: freezed == orderCourse
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameFile: freezed == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topic implements _Topic {
  const _$_Topic(
      {this.id,
      this.courseId,
      this.orderCourse,
      this.name,
      this.nameFile,
      this.numberOfPages,
      this.description,
      this.videoUrl,
      this.type,
      this.createdAt,
      this.updatedAt});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$$_TopicFromJson(json);

  @override
  final String? id;
  @override
  final String? courseId;
  @override
  final int? orderCourse;
  @override
  final String? name;
  @override
  final String? nameFile;
  @override
  final int? numberOfPages;
  @override
  final String? description;
  @override
  final String? videoUrl;
  @override
  final String? type;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Topic(id: $id, courseId: $courseId, orderCourse: $orderCourse, name: $name, nameFile: $nameFile, numberOfPages: $numberOfPages, description: $description, videoUrl: $videoUrl, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.orderCourse, orderCourse) ||
                other.orderCourse == orderCourse) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameFile, nameFile) ||
                other.nameFile == nameFile) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      courseId,
      orderCourse,
      name,
      nameFile,
      numberOfPages,
      description,
      videoUrl,
      type,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      __$$_TopicCopyWithImpl<_$_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {final String? id,
      final String? courseId,
      final int? orderCourse,
      final String? name,
      final String? nameFile,
      final int? numberOfPages,
      final String? description,
      final String? videoUrl,
      final String? type,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  String? get id;
  @override
  String? get courseId;
  @override
  int? get orderCourse;
  @override
  String? get name;
  @override
  String? get nameFile;
  @override
  int? get numberOfPages;
  @override
  String? get description;
  @override
  String? get videoUrl;
  @override
  String? get type;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      throw _privateConstructorUsedError;
}
