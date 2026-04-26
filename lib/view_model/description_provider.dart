import 'package:flutter_riverpod/flutter_riverpod.dart';

class DescriptionNotifier extends Notifier<String> {
  @override
  String build() => "";
  
  void update(String value) => state = value;
  void clear() => state = "";
}

final descriptionProvider = NotifierProvider<DescriptionNotifier, String>(DescriptionNotifier.new);
