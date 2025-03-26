// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCommunityModelCollection on Isar {
  IsarCollection<CommunityModel> get communityModels => this.collection();
}

const CommunityModelSchema = CollectionSchema(
  name: r'Community',
  id: -6560712865124753032,
  properties: {
    r'about': PropertySchema(
      id: 0,
      name: r'about',
      type: IsarType.string,
    ),
    r'created': PropertySchema(
      id: 1,
      name: r'created',
      type: IsarType.dateTime,
    ),
    r'genesisId': PropertySchema(
      id: 2,
      name: r'genesisId',
      type: IsarType.long,
    ),
    r'isBlocked': PropertySchema(
      id: 3,
      name: r'isBlocked',
      type: IsarType.bool,
    ),
    r'isMember': PropertySchema(
      id: 4,
      name: r'isMember',
      type: IsarType.bool,
    ),
    r'memberCount': PropertySchema(
      id: 5,
      name: r'memberCount',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'presidentId': PropertySchema(
      id: 7,
      name: r'presidentId',
      type: IsarType.long,
    ),
    r'updated': PropertySchema(
      id: 8,
      name: r'updated',
      type: IsarType.dateTime,
    ),
    r'walletId': PropertySchema(
      id: 9,
      name: r'walletId',
      type: IsarType.string,
    ),
    r'walletVoteTokens': PropertySchema(
      id: 10,
      name: r'walletVoteTokens',
      type: IsarType.long,
    )
  },
  estimateSize: _communityModelEstimateSize,
  serialize: _communityModelSerialize,
  deserialize: _communityModelDeserialize,
  deserializeProp: _communityModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _communityModelGetId,
  getLinks: _communityModelGetLinks,
  attach: _communityModelAttach,
  version: '3.1.0+1',
);

int _communityModelEstimateSize(
  CommunityModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.about;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.walletId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _communityModelSerialize(
  CommunityModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.about);
  writer.writeDateTime(offsets[1], object.created);
  writer.writeLong(offsets[2], object.genesisId);
  writer.writeBool(offsets[3], object.isBlocked);
  writer.writeBool(offsets[4], object.isMember);
  writer.writeLong(offsets[5], object.memberCount);
  writer.writeString(offsets[6], object.name);
  writer.writeLong(offsets[7], object.presidentId);
  writer.writeDateTime(offsets[8], object.updated);
  writer.writeString(offsets[9], object.walletId);
  writer.writeLong(offsets[10], object.walletVoteTokens);
}

CommunityModel _communityModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CommunityModel(
    about: reader.readStringOrNull(offsets[0]),
    created: reader.readDateTimeOrNull(offsets[1]),
    genesisId: reader.readLongOrNull(offsets[2]),
    id: id,
    isBlocked: reader.readBoolOrNull(offsets[3]),
    isMember: reader.readBoolOrNull(offsets[4]),
    memberCount: reader.readLongOrNull(offsets[5]),
    name: reader.readStringOrNull(offsets[6]),
    presidentId: reader.readLongOrNull(offsets[7]),
    walletId: reader.readStringOrNull(offsets[9]),
    walletVoteTokens: reader.readLongOrNull(offsets[10]),
  );
  object.updated = reader.readDateTimeOrNull(offsets[8]);
  return object;
}

P _communityModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _communityModelGetId(CommunityModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _communityModelGetLinks(CommunityModel object) {
  return [];
}

void _communityModelAttach(
    IsarCollection<dynamic> col, Id id, CommunityModel object) {}

extension CommunityModelQueryWhereSort
    on QueryBuilder<CommunityModel, CommunityModel, QWhere> {
  QueryBuilder<CommunityModel, CommunityModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CommunityModelQueryWhere
    on QueryBuilder<CommunityModel, CommunityModel, QWhereClause> {
  QueryBuilder<CommunityModel, CommunityModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterWhereClause> idBetween(
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

extension CommunityModelQueryFilter
    on QueryBuilder<CommunityModel, CommunityModel, QFilterCondition> {
  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'about',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'about',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'about',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'about',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'about',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'about',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      aboutIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'about',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      createdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'created',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      createdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'created',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      createdEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'genesisId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'genesisId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genesisId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genesisId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genesisId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      genesisIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genesisId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isBlockedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBlocked',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isBlockedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBlocked',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isBlockedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMember',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMember',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      isMemberEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMember',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      memberCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'memberCount',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      memberCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'memberCount',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      memberCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
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

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'presidentId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'presidentId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presidentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'presidentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'presidentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      presidentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'presidentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updated',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updated',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      updatedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'walletId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'walletId',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'walletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'walletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'walletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'walletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'walletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'walletVoteTokens',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'walletVoteTokens',
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'walletVoteTokens',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'walletVoteTokens',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'walletVoteTokens',
        value: value,
      ));
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterFilterCondition>
      walletVoteTokensBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'walletVoteTokens',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CommunityModelQueryObject
    on QueryBuilder<CommunityModel, CommunityModel, QFilterCondition> {}

extension CommunityModelQueryLinks
    on QueryBuilder<CommunityModel, CommunityModel, QFilterCondition> {}

extension CommunityModelQuerySortBy
    on QueryBuilder<CommunityModel, CommunityModel, QSortBy> {
  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByAbout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'about', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByAboutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'about', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByGenesisId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genesisId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByGenesisIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genesisId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByIsBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByIsMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByPresidentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presidentId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByPresidentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presidentId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> sortByWalletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByWalletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByWalletVoteTokens() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletVoteTokens', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      sortByWalletVoteTokensDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletVoteTokens', Sort.desc);
    });
  }
}

extension CommunityModelQuerySortThenBy
    on QueryBuilder<CommunityModel, CommunityModel, QSortThenBy> {
  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByAbout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'about', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByAboutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'about', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByGenesisId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genesisId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByGenesisIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genesisId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByIsBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBlocked', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByIsMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMember', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByPresidentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presidentId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByPresidentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presidentId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy> thenByWalletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletId', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByWalletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletId', Sort.desc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByWalletVoteTokens() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletVoteTokens', Sort.asc);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QAfterSortBy>
      thenByWalletVoteTokensDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'walletVoteTokens', Sort.desc);
    });
  }
}

extension CommunityModelQueryWhereDistinct
    on QueryBuilder<CommunityModel, CommunityModel, QDistinct> {
  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByAbout(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'about', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct>
      distinctByGenesisId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genesisId');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct>
      distinctByIsBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBlocked');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByIsMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMember');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct>
      distinctByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberCount');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct>
      distinctByPresidentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'presidentId');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updated');
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct> distinctByWalletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'walletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CommunityModel, CommunityModel, QDistinct>
      distinctByWalletVoteTokens() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'walletVoteTokens');
    });
  }
}

extension CommunityModelQueryProperty
    on QueryBuilder<CommunityModel, CommunityModel, QQueryProperty> {
  QueryBuilder<CommunityModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CommunityModel, String?, QQueryOperations> aboutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'about');
    });
  }

  QueryBuilder<CommunityModel, DateTime?, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<CommunityModel, int?, QQueryOperations> genesisIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genesisId');
    });
  }

  QueryBuilder<CommunityModel, bool?, QQueryOperations> isBlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBlocked');
    });
  }

  QueryBuilder<CommunityModel, bool?, QQueryOperations> isMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMember');
    });
  }

  QueryBuilder<CommunityModel, int?, QQueryOperations> memberCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberCount');
    });
  }

  QueryBuilder<CommunityModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CommunityModel, int?, QQueryOperations> presidentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'presidentId');
    });
  }

  QueryBuilder<CommunityModel, DateTime?, QQueryOperations> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updated');
    });
  }

  QueryBuilder<CommunityModel, String?, QQueryOperations> walletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'walletId');
    });
  }

  QueryBuilder<CommunityModel, int?, QQueryOperations>
      walletVoteTokensProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'walletVoteTokens');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityModel _$CommunityModelFromJson(Map<String, dynamic> json) =>
    CommunityModel(
      id: json['id'] as int,
      about: json['about'] as String?,
      name: json['name'] as String?,
      presidentId: json['presidentId'] as int?,
      walletId: json['walletId'] as String?,
      walletVoteTokens: json['walletVoteTokens'] as int?,
      genesisId: json['genesisId'] as int?,
      memberCount: json['memberCount'] as int?,
      isMember: json['isMember'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      isBlocked: json['isBlocked'] as bool?,
    )..updated = json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String);

Map<String, dynamic> _$CommunityModelToJson(CommunityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'about': instance.about,
      'name': instance.name,
      'presidentId': instance.presidentId,
      'walletId': instance.walletId,
      'walletVoteTokens': instance.walletVoteTokens,
      'genesisId': instance.genesisId,
      'memberCount': instance.memberCount,
      'isMember': instance.isMember,
      'created': instance.created?.toIso8601String(),
      'isBlocked': instance.isBlocked,
      'updated': instance.updated?.toIso8601String(),
    };
