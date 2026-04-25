import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/submit_report_view_provider.dart';
import 'package:sair_cpa/model/report_model.dart';

class BottomActionWidget extends ConsumerWidget {
  const BottomActionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submitState = ref.watch(submitReportViewModelProvider);

    ref.listen<AsyncValue<ReportModel?>>(submitReportViewModelProvider, (previous, next) {
      next.when(
        data: (report) {
          if (report != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Report submitted successfully!')),
            );
            Navigator.of(context).pop();
          }
        },
        error: (error, stack) {
          print("SUBMISSION ERROR: $error");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed: $error'),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5),
            ),
          );
        },
        loading: () {},
      );
    });

    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 32),
      child: SizedBox(
        width: double.infinity,
        height: 54,
        child: ElevatedButton(
          onPressed: submitState.isLoading ? null : () => ref.read(submitReportViewModelProvider.notifier).submitReport(),
          child: submitState.isLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                )
              : const Text("Submit Report"),
        ),
      ),
    );
  }
}
