import 'package:flutter_riverpod/flutter_riverpod.dart';

final noteControllerProvider =
    StateNotifierProvider<NoteController, AsyncValue<void>>((ref) {
      return NoteController();
    });

class NoteController extends StateNotifier<AsyncValue<void>> {
  NoteController() : super(const AsyncData(null));
}
