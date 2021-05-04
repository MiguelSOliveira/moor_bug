import 'package:moor_generator/api/migrations.dart';
import 'package:test/test.dart';

import '../database.dart';
import 'generated_migrations/schema.dart';

// DOCS: https://moor.simonbinder.eu/docs/advanced-features/migrations/
// Example:
void main() {
  SchemaVerifier verifier;
  MoorDb db;

  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper());
  });

  setUp(() async {
    await db?.close();
  });

  test('upgrade from v1 to v2', () async {
    final connection = await verifier.startAt(1);
    db = MoorDb.connect(connection);
    await verifier.migrateAndValidate(db, 2, validateDropped: true);
  });

  test('upgrade from v2 to v3', () async {
    final connection = await verifier.startAt(2);
    db = MoorDb.connect(connection);
    await verifier.migrateAndValidate(db, 3, validateDropped: true);
  });
}
