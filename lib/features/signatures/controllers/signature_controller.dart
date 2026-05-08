import 'package:flutter_riverpod/flutter_riverpod.dart';

final signatureControllerProvider =
    StateNotifierProvider<SignatureController, AsyncValue<void>>((ref) {
      return SignatureController();
    });

class SignatureController extends StateNotifier<AsyncValue<void>> {
  SignatureController() : super(const AsyncData(null));
}
