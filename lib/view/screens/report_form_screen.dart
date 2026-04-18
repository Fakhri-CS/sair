import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/accident_type_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/bottom_action_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/camera_input_section_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/description_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/evidence_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/license_plate_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/location_section_widgets/location_input_section_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/report_form_header_widget.dart';

class ReportFormScreen extends StatefulWidget {
  const ReportFormScreen({super.key});

  @override
  State<ReportFormScreen> createState() => _ReportFormScreenState();
}

class _ReportFormScreenState extends State<ReportFormScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: "Accident Report",
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReportFormHeaderWidget(),
              SizedBox(height: 24),
              LocationInputSectionWidget(),
              SizedBox(height: 24),
              AccidentTypeCardWidget(),
              SizedBox(height: 16),
              LicensePlateCardWidget(),
              SizedBox(height: 16),
              DescriptionCardWidget(),
              SizedBox(height: 16),
              CameraInputSectionWidget(),
              SizedBox(height: 16),
              EvidenceCardWidget(),
              SizedBox(height: 32),
              BottomActionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
