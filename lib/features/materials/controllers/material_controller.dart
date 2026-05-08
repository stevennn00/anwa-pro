import 'package:flutter_riverpod/flutter_riverpod.dart';

final materialControllerProvider =
    StateNotifierProvider<MaterialController, AsyncValue<void>>((ref) {
      return MaterialController();
    });

class MaterialController extends StateNotifier<AsyncValue<void>> {
  MaterialController() : super(const AsyncData(null));
}
