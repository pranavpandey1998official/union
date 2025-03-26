// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCommentModelCollection on Isar {
  IsarCollection<CommentModel> get commentModels => this.collection();
}

const CommentModelSchema = CollectionSchema(
  name: r'Comment',
  id: -5579229333153709021,
  properties: {
    r'body': PropertySchema(
      id: 0,
      name: r'body',
      type: IsarType.string,
    ),
    r'commentId': PropertySchema(
      id: 1,
      name: r'commentId',
      type: IsarType.long,
    ),
    r'communityID': PropertySchema(
      id: 2,
      name: r'communityID',
      type: IsarType.long,
    ),
    r'created': PropertySchema(
      id: 3,
      name: r'created',
      type: IsarType.dateTime,
    ),
    r'immediateChildren': PropertySchema(
      id: 4,
      name: r'immediateChildren',
      type: IsarType.long,
    ),
    r'isBlocked': PropertySchema(
      id: 5,
      name: r'isBlocked',
      type: IsarType.bool,
    ),
    r'isMember': PropertySchema(
      id: 6,
      name: r'isMember',
      type: IsarType.bool,
    ),
    r'memberCount': PropertySchema(
      id: 7,
      name: r'memberCount',
      type: IsarType.long,
    ),
    r'parentCommentID': PropertySchema(
      id: 8,
      name: r'parentCommentID',
      type: IsarType.long,
    ),
    r'parentPostID': PropertySchema(
      id: 9,
      name: r'parentPostID',
      type: IsarType.long,
    ),
    r'pathFromRoot': PropertySchema(
      id: 10,
      name: r'pathFromRoot',
      type: IsarType.string,
    )
  },
  estimateSize: _commentModelEstimateSize,
  serialize: _commentModelSerialize,
  deserialize: _commentModelDeserialize,
  deserializeProp: _commentModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _commentModelGetId,
  getLinks: _commentModelGetLinks,
  attach: _commentModelAttach,
  version: '3.1.0+1',
);

int _commentModelEstimateSize(
  CommentModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.body;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pathFromRoot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _commentModelSerialize(
  CommentModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.body);
  writer.writeLong(offsets[1], object.commentId);
  writer.writeLong(offsets[2], object.communityID);
  writer.writeDateTime(offsets[3], object.created);
  writer.writeLong(offsets[4], object.immediateChildren);
  writer.writeBool(offsets[5], object.isBlocked);
  writer.writeBool(offsets[6], object.isMember);
  writer.writeLong(offsets[7], object.memberCount);
  writer.writeLong(offsets[8], object.parentCommentID);
  writer.writeLong(offsets[9], object.parentPostID);
  writer.writeString(offsets[10], object.pathFromRoot);
}

CommentModel _commentModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CommentModel(
    body: reader.readStringOrNull(offsets[0]),
    commentId: reader.readLongOrNull(offsets[1]),
    communityID: reader.readLongOrNull(offsets[2]),
    created: reader.readDateTimeOrNull(offsets[3]),
    immediateChildren: reader.readLongOrNull(offsets[4]),
    isBlocked: reader.readBoolOrNull(offsets[5]),
    isMember: reader.readBoolOrNull(offsets[6]),
    memberCount: reader.readLongOrNull(offsets[7]),
    parentCommentID: reader.readLongOrNull(offsets[8]),
    parentPostID: reader.readLongOrNull(offsets[9]),
    pathFromRoot: reader.readStringOrNull(offsets[10]),
  );
  return object;
}

P _commentModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _commentModelGetId(CommentModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _commentModelGetLinks(CommentModel object) {
  return [];
}

void _commentModelAttach(
    IsarCollection<dynamic> col, Id id, CommentModel object) {}

extension CommentModelQueryWhereSort
    on QueryBuilder<CommentModel, CommentModel, QWhere> {
  QueryBuilder<CommentModel, CommentModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CommentModelQueryWhere
    on QueryBuilder<CommentModel, CommentModel, QWhereClause> {
  QueryBuilder<CommentModel, CommentModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CommentModelQueryFilter
    on QueryBuilder<CommentModel, CommentModel, QFilterCondition> {
  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'body',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      bodyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'body',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      bodyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'body',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> bodyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'body',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'body',
        value: '',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'body',
        value: '',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commentId',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commentId',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      commentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'communityID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'communityID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'communityID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'communityID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'communityID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      communityIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'communityID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'created',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'created',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      createdBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'immediateChildren',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'immediateChildren',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'immediateChildren',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'immediateChildren',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'immediateChildren',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      immediateChildrenBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'immediateChildren',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isBlockedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBlocked',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isBlockedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBlocked',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isBlockedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMember',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMember',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      isMemberEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMember',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'memberCount',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'memberCount',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      memberCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentCommentID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentCommentID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentCommentID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentCommentID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentCommentID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentCommentIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentCommentID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentPostID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentPostID',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentPostID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentPostID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentPostID',
        value: value,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      parentPostIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentPostID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pathFromRoot',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pathFromRoot',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pathFromRoot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pathFromRoot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pathFromRoot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pathFromRoot',
        value: '',
      ));
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterFilterCondition>
      pathFromRootIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pathFromRoot',
        value: '',
      ));
    });
  }
}

extension CommentModelQueryObject
    on QueryBuilder<CommentModel, CommentModel, QFilterCondition> {}

extension CommentModelQueryLinks
    on QueryBuilder<CommentModel, CommentModel, QFilterCondition> {}

extension CommentModelQuerySortBy
    on QueryBuilder<CommentModel, CommentModel, QSortBy> {
  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByCommentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentId', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByCommentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentId', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByCommunityID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByCommunityIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByImmediateChildren() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'immediateChildren', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByImmediateChildrenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'immediateChildren', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByIsBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByIsMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByParentCommentID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentCommentID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByParentCommentIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentCommentID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByParentPostID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPostID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByParentPostIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPostID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> sortByPathFromRoot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pathFromRoot', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      sortByPathFromRootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pathFromRoot', Sort.desc);
    });
  }
}

extension CommentModelQuerySortThenBy
    on QueryBuilder<CommentModel, CommentModel, QSortThenBy> {
  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByCommentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentId', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByCommentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentId', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByCommunityID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByCommunityIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'communityID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByImmediateChildren() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'immediateChildren', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByImmediateChildrenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'immediateChildren', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByIsBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByIsMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByParentCommentID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentCommentID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByParentCommentIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentCommentID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByParentPostID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPostID', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByParentPostIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPostID', Sort.desc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy> thenByPathFromRoot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pathFromRoot', Sort.asc);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QAfterSortBy>
      thenByPathFromRootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pathFromRoot', Sort.desc);
    });
  }
}

extension CommentModelQueryWhereDistinct
    on QueryBuilder<CommentModel, CommentModel, QDistinct> {
  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'body', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByCommentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentId');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByCommunityID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'communityID');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct>
      distinctByImmediateChildren() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'immediateChildren');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBlocked');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMember');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberCount');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct>
      distinctByParentCommentID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentCommentID');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByParentPostID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentPostID');
    });
  }

  QueryBuilder<CommentModel, CommentModel, QDistinct> distinctByPathFromRoot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pathFromRoot', caseSensitive: caseSensitive);
    });
  }
}

extension CommentModelQueryProperty
    on QueryBuilder<CommentModel, CommentModel, QQueryProperty> {
  QueryBuilder<CommentModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CommentModel, String?, QQueryOperations> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'body');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations> commentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentId');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations> communityIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'communityID');
    });
  }

  QueryBuilder<CommentModel, DateTime?, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations>
      immediateChildrenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'immediateChildren');
    });
  }

  QueryBuilder<CommentModel, bool?, QQueryOperations> isBlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBlocked');
    });
  }

  QueryBuilder<CommentModel, bool?, QQueryOperations> isMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMember');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations> memberCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberCount');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations> parentCommentIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentCommentID');
    });
  }

  QueryBuilder<CommentModel, int?, QQueryOperations> parentPostIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentPostID');
    });
  }

  QueryBuilder<CommentModel, String?, QQueryOperations> pathFromRootProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pathFromRoot');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      commentId: json['id'] as int?,
      body: json['body'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      parentPostID: json['parentPostID'] as int?,
      parentCommentID: json['parentCommentID'] as int?,
      communityID: json['communityID'] as int?,
      immediateChildren: json['immediateChildrenCount'] as int?,
      pathFromRoot: json['pathFromRoot'] as String?,
      memberCount: json['upVote'] as int?,
      isMember: json['downVote'] as bool?,
      isBlocked: json['creator'] as bool?,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.commentId,
      'body': instance.body,
      'created': instance.created?.toIso8601String(),
      'parentPostID': instance.parentPostID,
      'parentCommentID': instance.parentCommentID,
      'communityID': instance.communityID,
      'immediateChildrenCount': instance.immediateChildren,
      'pathFromRoot': instance.pathFromRoot,
      'upVote': instance.memberCount,
      'downVote': instance.isMember,
      'creator': instance.isBlocked,
    };
