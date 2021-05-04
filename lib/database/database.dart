import 'package:moor_flutter/moor_flutter.dart';

import 'migrations.dart';

part 'database.g.dart';

@UseMoor(include: {'tables.moor'})
class MoorDb extends _$MoorDb {
  MoorDb(QueryExecutor e) : super(e);

  MoorDb.connect(DatabaseConnection connection) : super.connect(connection);

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (migrator) {
          return migrator.createAll();
        },
        onUpgrade: (migrator, from, to) async {
          // ignore: avoid_print
          print('Upgrading v$from to v$to');

          if (to < from) {
            // ignore: avoid_print
            print('Trying to downgrade from v$from to v$to');
            throw Exception("Can't downgrade database");
          }

          await customStatement('PRAGMA foreign_keys = OFF');

          await transaction(
            () async {
              for (var i = from; i < to; i++) {
                if (!migrationsMap.containsKey(i)) {
                  print('No migration available for v$i');
                } else {
                  await migrationsMap[i](migrator, this);
                }
              }
            },
          );

          await customStatement('PRAGMA foreign_keys = ON');
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}
