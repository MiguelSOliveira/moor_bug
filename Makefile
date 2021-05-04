gen_schema:
	# EXAMPLE: make version=9 gen_schema
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter pub run moor_generator schema dump lib/database/database.dart lib/database/schemas/moor_schema_v$(version).json
	flutter pub run moor_generator schema generate lib/database/schemas/ lib/database/test/generated_migrations/
