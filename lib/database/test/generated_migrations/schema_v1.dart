// GENERATED CODE, DO NOT EDIT BY HAND.
//@dart=2.9
import 'package:moor/moor.dart';

class _FirstTable extends Table with TableInfo {
  final GeneratedDatabase _db;
  final String _alias;
  _FirstTable(this._db, [this._alias]);
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

  @override
  List<GeneratedColumn> get $columns => [id, firstCol];
  @override
  _FirstTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'firstTable';
  @override
  final String actualTableName = 'firstTable';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Never map(Map<String, dynamic> data, {String tablePrefix}) {
    throw UnsupportedError('TableInfo.map in schema verification code');
  }

  @override
  _FirstTable createAlias(String alias) {
    return _FirstTable(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class DatabaseAtV1 extends GeneratedDatabase {
  DatabaseAtV1(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  DatabaseAtV1.connect(DatabaseConnection c) : super.connect(c);
  _FirstTable _firstTable;
  _FirstTable get firstTable => _firstTable ??= _FirstTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [firstTable];
  @override
  int get schemaVersion => 1;
}
