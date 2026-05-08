import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database_service.dart';

final databaseProvider = Provider<TradeProofDatabase>((ref) {
  final database = TradeProofDatabase();
  ref.onDispose(database.close);
  return database;
});
