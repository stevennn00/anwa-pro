import '../models/material_item.dart';

abstract class MaterialRepository {
  Stream<List<MaterialItem>> watchMaterialsForJob(String jobId);
  Future<void> upsertMaterial(MaterialItem item);
  Future<void> deleteMaterial(String itemId);
}
