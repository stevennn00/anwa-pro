import 'package:drift/drift.dart';

import '../database/database_service.dart';
import '../models/customer.dart' as domain;

abstract class CustomerRepository {
  Stream<List<domain.Customer>> watchCustomers();
  Future<domain.Customer?> getCustomer(String id);
  Future<domain.Customer?> findByName(String name);
  Future<void> upsertCustomer(domain.Customer customer);
}

class LocalCustomerRepository implements CustomerRepository {
  LocalCustomerRepository(this._db);

  final TradeProofDatabase _db;

  @override
  Stream<List<domain.Customer>> watchCustomers() {
    final query = _db.select(_db.customers)
      ..orderBy([(tbl) => OrderingTerm.asc(tbl.name)]);
    return query.watch().map((rows) => rows.map(_customerFromEntity).toList());
  }

  @override
  Future<domain.Customer?> getCustomer(String id) async {
    final query = _db.select(_db.customers)..where((tbl) => tbl.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _customerFromEntity(row);
  }

  @override
  Future<domain.Customer?> findByName(String name) async {
    final trimmed = name.trim();
    if (trimmed.isEmpty) {
      return null;
    }
    final query = _db.select(_db.customers)
      ..where((tbl) => tbl.name.lower().equals(trimmed.toLowerCase()));
    final row = await query.getSingleOrNull();
    return row == null ? null : _customerFromEntity(row);
  }

  @override
  Future<void> upsertCustomer(domain.Customer customer) {
    return _db
        .into(_db.customers)
        .insertOnConflictUpdate(
          CustomersCompanion(
            id: Value(customer.id),
            name: Value(customer.name),
            phone: Value(customer.phone),
            email: Value(customer.email),
            address: Value(customer.address),
            createdAt: Value(customer.createdAt),
            updatedAt: Value(customer.updatedAt),
          ),
        );
  }
}

domain.Customer _customerFromEntity(Customer row) {
  return domain.Customer(
    id: row.id,
    name: row.name,
    phone: row.phone,
    email: row.email,
    address: row.address,
    createdAt: row.createdAt,
    updatedAt: row.updatedAt,
  );
}
