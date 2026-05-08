import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeOrderControllerProvider =
    StateNotifierProvider<ChangeOrderController, AsyncValue<void>>((ref) {
      return ChangeOrderController();
    });

class ChangeOrderController extends StateNotifier<AsyncValue<void>> {
  ChangeOrderController() : super(const AsyncData(null));
}
