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

  void removeAt(int index) {
    final newList = [...state];
    newList.removeAt(index);
    state = newList;
  }

  void updateAt(int index, String value) {
    final newList = [...state];
    newList[index] = value;
    state = newList;
  }
  
  void clear() {
    state = [];
  }
}

final licensePlatesProvider =
    NotifierProvider<LicensePlatesNotifier, List<String>>(
      LicensePlatesNotifier.new,
    );
