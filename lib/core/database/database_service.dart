import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database_service.g.dart';

class Jobs extends Table {
  TextColumn get id => text()();
  TextColumn get customerId => text().nullable()();
  TextColumn get title => text()();
  TextColumn get tradeType => text()();
  TextColumn get workOrderNumber => text().nullable()();
  TextColumn get technicianName => text().nullable()();
  DateTimeColumn get jobDate => dateTime()();
  TextColumn get status => text()();
  TextColumn get summary => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get archivedAt => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class Customers extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get phone => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class JobPhotos extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get originalPath => text()();
  TextColumn get markedUpPath => text().nullable()();
  TextColumn get category => text()();
  TextColumn get caption => text().nullable()();
  TextColumn get tagsJson => text().withDefault(const Constant('[]'))();
  DateTimeColumn get capturedAt => dateTime()();
  BoolColumn get includeInReport =>
      boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class JobNotes extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get body => text()();
  BoolColumn get visibleOnReport =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class MaterialItems extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get name => text()();
  RealColumn get quantity => real()();
  TextColumn get unit => text()();
  RealColumn get unitCost => real().nullable()();
  BoolColumn get includeOnReport =>
      boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class ChangeOrders extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get title => text()();
  TextColumn get reason => text().nullable()();
  TextColumn get description => text().nullable()();
  RealColumn get laborCost => real().withDefault(const Constant(0))();
  RealColumn get materialCost => real().withDefault(const Constant(0))();
  RealColumn get otherCost => real().withDefault(const Constant(0))();
  TextColumn get attachedPhotoIdsJson =>
      text().withDefault(const Constant('[]'))();
  TextColumn get status => text()();
  TextColumn get approvalSignatureId => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class SignatureRecords extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get type => text()();
  TextColumn get signerName => text()();
  TextColumn get filePath => text()();
  DateTimeColumn get signedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class GeneratedReports extends Table {
  TextColumn get id => text()();
  TextColumn get jobId => text().references(Jobs, #id)();
  TextColumn get filePath => text()();
  TextColumn get reportType => text()();
  TextColumn get template => text()();
  TextColumn get title => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class CompanyProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get companyName => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get licenseNumber => text().nullable()();
  TextColumn get defaultTechnicianName => text().nullable()();
  TextColumn get logoPath => text().nullable()();
  TextColumn get defaultDisclaimer => text().nullable()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@DriftDatabase(
  tables: [
    Jobs,
    Customers,
    JobPhotos,
    JobNotes,
    MaterialItems,
    ChangeOrders,
    SignatureRecords,
    GeneratedReports,
    CompanyProfiles,
  ],
)
class TradeProofDatabase extends _$TradeProofDatabase {
  TradeProofDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> deleteJobCascade(String jobId) async {
    await transaction(() async {
      await (delete(
        generatedReports,
      )..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(
        signatureRecords,
      )..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(
        changeOrders,
      )..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(
        materialItems,
      )..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(jobNotes)..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(jobPhotos)..where((tbl) => tbl.jobId.equals(jobId))).go();
      await (delete(jobs)..where((tbl) => tbl.id.equals(jobId))).go();
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final documents = await getApplicationDocumentsDirectory();
    final root = Directory(p.join(documents.path, 'tradeproof'));
    await root.create(recursive: true);
    final file = File(p.join(root.path, 'tradeproof.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

String encodeStringList(List<String> values) => jsonEncode(values);

List<String> decodeStringList(String encoded) {
  final decoded = jsonDecode(encoded);
  if (decoded is List) {
    return decoded.whereType<String>().toList(growable: false);
  }
  return const [];
}
