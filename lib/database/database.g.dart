// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FirstTableData extends DataClass implements Insertable<FirstTableData> {
  final int id;
  final String firstCol;
  final String secondCol;
  final String thirdCol;
  FirstTableData(
      {@required this.id,
      @required this.firstCol,
      @required this.secondCol,
      @required this.thirdCol});
  factory FirstTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return FirstTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      firstCol: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}first_col']),
      secondCol: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}second_col']),
      thirdCol: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}third_col']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || firstCol != null) {
      map['first_col'] = Variable<String>(firstCol);
    }
    if (!nullToAbsent || secondCol != null) {
      map['second_col'] = Variable<String>(secondCol);
    }
    if (!nullToAbsent || thirdCol != null) {
      map['third_col'] = Variable<String>(thirdCol);
    }
    return map;
  }

  factory FirstTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FirstTableData(
      id: serializer.fromJson<int>(json['id']),
      firstCol: serializer.fromJson<String>(json['first_col']),
      secondCol: serializer.fromJson<String>(json['second_col']),
      thirdCol: serializer.fromJson<String>(json['third_col']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'first_col': serializer.toJson<String>(firstCol),
      'second_col': serializer.toJson<String>(secondCol),
      'third_col': serializer.toJson<String>(thirdCol),
    };
  }

  FirstTableData copyWith(
          {int id, String firstCol, String secondCol, String thirdCol}) =>
      FirstTableData(
        id: id ?? this.id,
        firstCol: firstCol ?? this.firstCol,
        secondCol: secondCol ?? this.secondCol,
        thirdCol: thirdCol ?? this.thirdCol,
      );
  @override
  String toString() {
    return (StringBuffer('FirstTableData(')
          ..write('id: $id, ')
          ..write('firstCol: $firstCol, ')
          ..write('secondCol: $secondCol, ')
          ..write('thirdCol: $thirdCol')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(firstCol.hashCode, $mrjc(secondCol.hashCode, thirdCol.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is FirstTableData &&
          other.id == this.id &&
          other.firstCol == this.firstCol &&
          other.secondCol == this.secondCol &&
          other.thirdCol == this.thirdCol);
}

class FirstTableCompanion extends UpdateCompanion<FirstTableData> {
  final Value<int> id;
  final Value<String> firstCol;
  final Value<String> secondCol;
  final Value<String> thirdCol;
  const FirstTableCompanion({
    this.id = const Value.absent(),
    this.firstCol = const Value.absent(),
    this.secondCol = const Value.absent(),
    this.thirdCol = const Value.absent(),
  });
  FirstTableCompanion.insert({
    this.id = const Value.absent(),
    @required String firstCol,
    @required String secondCol,
    @required String thirdCol,
  })  : firstCol = Value(firstCol),
        secondCol = Value(secondCol),
        thirdCol = Value(thirdCol);
  static Insertable<FirstTableData> custom({
    Expression<int> id,
    Expression<String> firstCol,
    Expression<String> secondCol,
    Expression<String> thirdCol,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstCol != null) 'first_col': firstCol,
      if (secondCol != null) 'second_col': secondCol,
      if (thirdCol != null) 'third_col': thirdCol,
    });
  }

  FirstTableCompanion copyWith(
      {Value<int> id,
      Value<String> firstCol,
      Value<String> secondCol,
      Value<String> thirdCol}) {
    return FirstTableCompanion(
      id: id ?? this.id,
      firstCol: firstCol ?? this.firstCol,
      secondCol: secondCol ?? this.secondCol,
      thirdCol: thirdCol ?? this.thirdCol,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstCol.present) {
      map['first_col'] = Variable<String>(firstCol.value);
    }
    if (secondCol.present) {
      map['second_col'] = Variable<String>(secondCol.value);
    }
    if (thirdCol.present) {
      map['third_col'] = Variable<String>(thirdCol.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirstTableCompanion(')
          ..write('id: $id, ')
          ..write('firstCol: $firstCol, ')
          ..write('secondCol: $secondCol, ')
          ..write('thirdCol: $thirdCol')
          ..write(')'))
        .toString();
  }
}

class FirstTable extends Table with TableInfo<FirstTable, FirstTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  FirstTable(this._db, [this._alias]);
  GeneratedIntColumn _id;
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        declaredAsPrimaryKey: true,
        hasAutoIncrement: true,
        $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  }

  GeneratedTextColumn _firstCol;
  GeneratedTextColumn get firstCol => _firstCol ??= _constructFirstCol();
  GeneratedTextColumn _constructFirstCol() {
    return GeneratedTextColumn('first_col', $tableName, false,
        $customConstraints: 'NOT NULL UNIQUE');
  }

  GeneratedTextColumn _secondCol;
  GeneratedTextColumn get secondCol => _secondCol ??= _constructSecondCol();
  GeneratedTextColumn _constructSecondCol() {
    return GeneratedTextColumn('second_col', $tableName, false,
        $customConstraints: 'NOT NULL UNIQUE');
  }

  GeneratedTextColumn _thirdCol;
  GeneratedTextColumn get thirdCol => _thirdCol ??= _constructThirdCol();
  GeneratedTextColumn _constructThirdCol() {
    return GeneratedTextColumn('third_col', $tableName, false,
        $customConstraints: 'NOT NULL UNIQUE');
  }

  @override
  List<GeneratedColumn> get $columns => [id, firstCol, secondCol, thirdCol];
  @override
  FirstTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'firstTable';
  @override
  final String actualTableName = 'firstTable';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FirstTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FirstTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  FirstTable createAlias(String alias) {
    return FirstTable(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$MoorDb extends GeneratedDatabase {
  _$MoorDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$MoorDb.connect(DatabaseConnection c) : super.connect(c);
  FirstTable _firstTable;
  FirstTable get firstTable => _firstTable ??= FirstTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [firstTable];
}
