import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccidentTypeNotifier extends Notifier<String> {
  @override
  String build() => "Rear-end";
  
  void update(String value) => state = value;
  void clear() => state = "Rear-end";
}

final accidentTypeProvider = NotifierProvider<AccidentTypeNotifier, String>(AccidentTypeNotifier.new);
