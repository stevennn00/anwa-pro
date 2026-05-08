import '../models/change_order.dart';

abstract class ChangeOrderRepository {
  Stream<List<ChangeOrder>> watchChangeOrdersForJob(String jobId);
  Future<void> upsertChangeOrder(ChangeOrder changeOrder);
  Future<void> deleteChangeOrder(String changeOrderId);
}
