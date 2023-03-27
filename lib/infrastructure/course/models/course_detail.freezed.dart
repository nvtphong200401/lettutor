// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDetail _$CourseDetailFromJson(Map<String, dynamic> json) {
  return _CourseDetail.fromJson(json);
}

/// @nodoc
mixin _$CourseDetail {
  String get message => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDetailCopyWith<CourseDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailCopyWith<$Res> {
  factory $CourseDetailCopyWith(
          CourseDetail value, $Res Function(CourseDetail) then) =
      _$CourseDetailCopyWithImpl<$Res, CourseDetail>;
  @useResult
  $Res call({String message, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$CourseDetailCopyWithImpl<$Res, $Val extends CourseDetail>
    implements $CourseDetailCopyWith<$Res> {
  _$CourseDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CourseDetailCopyWith<$Res>
    implements $CourseDetailCopyWith<$Res> {
  factory _$$_CourseDetailCopyWith(
          _$_CourseDetail value, $Res Function(_$_CourseDetail) then) =
      __$$_CourseDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CourseDetailCopyWithImpl<$Res>
    extends _$CourseDetailCopyWithImpl<$Res, _$_CourseDetail>
    implements _$$_CourseDetailCopyWith<$Res> {
  __$$_CourseDetailCopyWithImpl(
      _$_CourseDetail _value, $Res Function(_$_CourseDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_CourseDetail(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDetail implements _CourseDetail {
  const _$_CourseDetail({required this.message, required this.data});

  factory _$_CourseDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDetailFromJson(json);

  @override
  final String message;
  @override
  final Data data;

  @override
  String toString() {
    return 'CourseDetail(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseDetail &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseDetailCopyWith<_$_CourseDetail> get copyWith =>
      __$$_CourseDetailCopyWithImpl<_$_CourseDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDetailToJson(
      this,
    );
  }
}

abstract class _CourseDetail implements CourseDetail {
  const factory _CourseDetail(
      {required final String message,
      required final Data data}) = _$_CourseDetail;

  factory _CourseDetail.fromJson(Map<String, dynamic> json) =
      _$_CourseDetail.fromJson;

  @override
  String get message;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_CourseDetailCopyWith<_$_CourseDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String get otherDetails => throw _privateConstructorUsedError;
  int get defaultPrice => throw _privateConstructorUsedError;
  int get coursePrice => throw _privateConstructorUsedError;
  dynamic get courseType => throw _privateConstructorUsedError;
  dynamic get sectionType => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  dynamic get displayOrder => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;
  List<dynamic> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String otherDetails,
      int defaultPrice,
      int coursePrice,
      dynamic courseType,
      dynamic sectionType,
      bool visible,
      dynamic displayOrder,
      String createdAt,
      String updatedAt,
      List<Topic> topics,
      List<dynamic> users});
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
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
    Object? reason = null,
    Object? purpose = null,
    Object? otherDetails = null,
    Object? defaultPrice = null,
    Object? coursePrice = null,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = null,
    Object? displayOrder = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? topics = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      otherDetails: null == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: null == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String otherDetails,
      int defaultPrice,
      int coursePrice,
      dynamic courseType,
      dynamic sectionType,
      bool visible,
      dynamic displayOrder,
      String createdAt,
      String updatedAt,
      List<Topic> topics,
      List<dynamic> users});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
    Object? reason = null,
    Object? purpose = null,
    Object? otherDetails = null,
    Object? defaultPrice = null,
    Object? coursePrice = null,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = null,
    Object? displayOrder = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? topics = null,
    Object? users = null,
  }) {
    return _then(_$_Data(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      otherDetails: null == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: null == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.level,
      required this.reason,
      required this.purpose,
      required this.otherDetails,
      required this.defaultPrice,
      required this.coursePrice,
      required this.courseType,
      required this.sectionType,
      required this.visible,
      required this.displayOrder,
      required this.createdAt,
      required this.updatedAt,
      required final List<Topic> topics,
      required final List<dynamic> users})
      : _topics = topics,
        _users = users;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String level;
  @override
  final String reason;
  @override
  final String purpose;
  @override
  final String otherDetails;
  @override
  final int defaultPrice;
  @override
  final int coursePrice;
  @override
  final dynamic courseType;
  @override
  final dynamic sectionType;
  @override
  final bool visible;
  @override
  final dynamic displayOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<dynamic> _users;
  @override
  List<dynamic> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'Data(id: $id, name: $name, description: $description, imageUrl: $imageUrl, level: $level, reason: $reason, purpose: $purpose, otherDetails: $otherDetails, defaultPrice: $defaultPrice, coursePrice: $coursePrice, courseType: $courseType, sectionType: $sectionType, visible: $visible, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, topics: $topics, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
            const DeepCollectionEquality()
                .equals(other.courseType, courseType) &&
            const DeepCollectionEquality()
                .equals(other.sectionType, sectionType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            const DeepCollectionEquality()
                .equals(other.displayOrder, displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality().equals(other._users, _users));
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
      const DeepCollectionEquality().hash(courseType),
      const DeepCollectionEquality().hash(sectionType),
      visible,
      const DeepCollectionEquality().hash(displayOrder),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_users));

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
  const factory _Data(
      {required final String id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final String level,
      required final String reason,
      required final String purpose,
      required final String otherDetails,
      required final int defaultPrice,
      required final int coursePrice,
      required final dynamic courseType,
      required final dynamic sectionType,
      required final bool visible,
      required final dynamic displayOrder,
      required final String createdAt,
      required final String updatedAt,
      required final List<Topic> topics,
      required final List<dynamic> users}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get level;
  @override
  String get reason;
  @override
  String get purpose;
  @override
  String get otherDetails;
  @override
  int get defaultPrice;
  @override
  int get coursePrice;
  @override
  dynamic get courseType;
  @override
  dynamic get sectionType;
  @override
  bool get visible;
  @override
  dynamic get displayOrder;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<Topic> get topics;
  @override
  List<dynamic> get users;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  int get orderCourse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nameFile => throw _privateConstructorUsedError;
  dynamic get numberOfPages => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get videoUrl => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {String id,
      String courseId,
      int orderCourse,
      String name,
      String nameFile,
      dynamic numberOfPages,
      String description,
      dynamic videoUrl,
      dynamic type,
      String createdAt,
      String updatedAt});
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
    Object? id = null,
    Object? courseId = null,
    Object? orderCourse = null,
    Object? name = null,
    Object? nameFile = null,
    Object? numberOfPages = freezed,
    Object? description = null,
    Object? videoUrl = freezed,
    Object? type = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCourse: null == orderCourse
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFile: null == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String id,
      String courseId,
      int orderCourse,
      String name,
      String nameFile,
      dynamic numberOfPages,
      String description,
      dynamic videoUrl,
      dynamic type,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res, _$_Topic>
    implements _$$_TopicCopyWith<$Res> {
  __$$_TopicCopyWithImpl(_$_Topic _value, $Res Function(_$_Topic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? orderCourse = null,
    Object? name = null,
    Object? nameFile = null,
    Object? numberOfPages = freezed,
    Object? description = null,
    Object? videoUrl = freezed,
    Object? type = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Topic(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCourse: null == orderCourse
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFile: null == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topic implements _Topic {
  const _$_Topic(
      {required this.id,
      required this.courseId,
      required this.orderCourse,
      required this.name,
      required this.nameFile,
      required this.numberOfPages,
      required this.description,
      required this.videoUrl,
      required this.type,
      required this.createdAt,
      required this.updatedAt});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$$_TopicFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final int orderCourse;
  @override
  final String name;
  @override
  final String nameFile;
  @override
  final dynamic numberOfPages;
  @override
  final String description;
  @override
  final dynamic videoUrl;
  @override
  final dynamic type;
  @override
  final String createdAt;
  @override
  final String updatedAt;

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
            const DeepCollectionEquality()
                .equals(other.numberOfPages, numberOfPages) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
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
      const DeepCollectionEquality().hash(numberOfPages),
      description,
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(type),
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
      {required final String id,
      required final String courseId,
      required final int orderCourse,
      required final String name,
      required final String nameFile,
      required final dynamic numberOfPages,
      required final String description,
      required final dynamic videoUrl,
      required final dynamic type,
      required final String createdAt,
      required final String updatedAt}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  int get orderCourse;
  @override
  String get name;
  @override
  String get nameFile;
  @override
  dynamic get numberOfPages;
  @override
  String get description;
  @override
  dynamic get videoUrl;
  @override
  dynamic get type;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      throw _privateConstructorUsedError;
}
