import 'package:moor_flutter/moor_flutter.dart';

import 'database.dart';

typedef MigrateFunction = Future<void> Function(Migrator, MoorDb);

final Map<int, MigrateFunction> migrationsMap = {
  1: migrate1,
  2: migrate2,
};

Future<void> migrate1(Migrator migrator, MoorDb db) async {
  // ignore: avoid_print
  print('Migrating v1');
  await migrator.alterTable(TableMigration(
    db.firstTable,
    newColumns: [db.firstTable.secondCol],
    columnTransformer: {db.firstTable.secondCol: const Constant<String>("test")},
  ));
}

Future<void> migrate2(Migrator migrator, MoorDb db) async {
  // ignore: avoid_print
  print('Migrating v2');
  await migrator.alterTable(TableMigration(
    db.firstTable,
    newColumns: [db.firstTable.thirdCol],
    columnTransformer: {db.firstTable.thirdCol: const Constant<String>("test2")},
  ));
}
