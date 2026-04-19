import 'package:flutter_riverpod/flutter_riverpod.dart';

class LicensePlatesNotifier extends Notifier<List<String>> {
  @override
  List<String> build() {
    return [];
  }

  void addLicensePlate(String licensePlate) {
    state = [...state, licensePlate];
  }

  void removLicensePlate(String licensePlate) {
    state = state.where((element) => element != licensePlate).toList();
  }
}

final licensePlatesProvider =
    NotifierProvider.autoDispose<LicensePlatesNotifier, List<String>>(
      LicensePlatesNotifier.new,
    );
