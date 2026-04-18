import 'package:flutter/material.dart';

class ReportFormScreen extends StatefulWidget {
  const ReportFormScreen({super.key});

  @override
  State<ReportFormScreen> createState() => _ReportFormScreenState();
}

class _ReportFormScreenState extends State<ReportFormScreen> {
  String _selectedAccidentType = "Rear-end"; // Default selection

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      // Using a plain AppBar if you need a back button, or leave it empty 
      // if it's pushed in a navigation stack.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(theme),
              const SizedBox(height: 24),
              
              _buildAccidentTypeCard(theme),
              const SizedBox(height: 16),
              
              _buildLicensePlateCard(theme),
              const SizedBox(height: 16),
              
              _buildDescriptionCard(theme),
              const SizedBox(height: 16),
              
              _buildEvidenceCard(theme),
              const SizedBox(height: 32), // Bottom padding
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomAction(theme),
    );
  }

  // --- Widget Builders ---

  Widget _buildHeader(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Report Details",
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF1E293B), // Deep slate blue matching the design
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Please provide accurate info to ensure quick\nprocessing",
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
            height: 1.4,
          ),
        ),
      ],
    );
  }

  Widget _buildAccidentTypeCard(ThemeData theme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline, size: 18, color: theme.colorScheme.secondary), // Using accent red/blue based on theme
                const SizedBox(width: 8),
                Text(
                  "Accident Type",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Grid of selectable options
            Row(
              children: [
                _buildTypeOption(theme, "Rear-end"),
                const SizedBox(width: 12),
                _buildTypeOption(theme, "Frontal"),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildTypeOption(theme, "Side Swipe"),
                const SizedBox(width: 12),
                _buildTypeOption(theme, "Other"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTypeOption(ThemeData theme, String title) {
    final isSelected = _selectedAccidentType == title;
    
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedAccidentType = title;
          });
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: isSelected 
                ? theme.primaryColor.withValues(alpha: 0.04) 
                : theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected 
                  ? theme.primaryColor 
                  : (theme.dividerTheme.color ?? Colors.grey.shade200),
              width: isSelected ? 1.5 : 1.0,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected ? theme.primaryColor : theme.colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLicensePlateCard(ThemeData theme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.directions_car_outlined, size: 18, color: theme.primaryColor),
                const SizedBox(width: 8),
                Text(
                  "License Plate",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // TextField automatically uses inputDecorationTheme
            TextField(
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "ABC 1234",
                suffixIcon: Icon(
                  Icons.check_circle_outline, 
                  color: theme.dividerTheme.color?.withValues(alpha: 0.8),
                  size: 20,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              ),
            ),
            const SizedBox(height: 12),
            
            // Helper Text
            Row(
              children: [
                Icon(Icons.info_outline, size: 12, color: theme.textTheme.labelSmall?.color),
                const SizedBox(width: 4),
                Text(
                  "Enter characters and numbers exactly as on plate",
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: theme.textTheme.labelSmall?.color?.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard(ThemeData theme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.description_outlined, size: 18, color: theme.primaryColor),
                const SizedBox(width: 8),
                Text(
                  "Description",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            TextField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: "Add any additional details here...",
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEvidenceCard(ThemeData theme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Thumbnail Image Placeholder
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: theme.dividerTheme.color?.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?auto=format&fit=crop&q=80&w=150'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            
            // Texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Evidence Captured",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "3 photos attached",
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            
            // Edit Button
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomAction(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 32),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.dividerTheme.color ?? Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          // Handle submission logic
        },
        child: const Text("Submit Report"),
      ),
    );
  }
}