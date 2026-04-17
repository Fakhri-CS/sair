import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // -----------------------------------------
  // 1. Color Palette Definitions
  // -----------------------------------------
  static const Color primaryBlue = Color(0xFF1E4576); // Main brand color (Headers, primary buttons)
  static const Color secondaryBlue = Color(0xFF326296); // Lighter blue for gradients/accents
  static const Color surfaceLightBlue = Color(0xFFF0F5FF); // Very light blue for secondary backgrounds
  
  static const Color accentRed = Color(0xFFE63956); // Used for map pins and notification dots
  
  static const Color background = Color(0xFFF9FAFC); // Main scaffold background
  static const Color surface = Colors.white; // Cards, bottom sheets, dialogs
  
  // Typography Colors
  static const Color textPrimary = Color(0xFF1A1A1A); // Headings and main text
  static const Color textSecondary = Color(0xFF71717A); // Subtitles, captions, hints
  
  // Status Colors (derived from the "Recent Activity" and "Report" statuses)
  static const Color statusApproved = Color(0xFF10B981);
  static const Color statusPending = Color(0xFFF59E0B);
  static const Color statusRejected = Color(0xFFEF4444);
  
  static const Color borderLight = Color(0xFFE4E4E7);

  // -----------------------------------------
  // 2. Global ThemeData Configuration
  // -----------------------------------------
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      primaryColor: primaryBlue,
      
      // Color Scheme
      colorScheme: const ColorScheme.light(
        primary: primaryBlue,
        secondary: accentRed,
        surface: surface,
        error: statusRejected,
        onPrimary: Colors.white,
        onSurface: textPrimary,
      ),

      // Typography
      // GoogleFonts is highly recommended for standardizing fonts across iOS/Android
      // Assuming 'Inter' or 'Roboto' based on the clean sans-serif look in the design.
      textTheme: GoogleFonts.interTextTheme().copyWith(
        displayLarge: const TextStyle(color: textPrimary, fontWeight: FontWeight.bold, fontSize: 32),
        headlineMedium: const TextStyle(color: textPrimary, fontWeight: FontWeight.bold, fontSize: 24),
        titleLarge: const TextStyle(color: textPrimary, fontWeight: FontWeight.w700, fontSize: 20),
        titleMedium: const TextStyle(color: textPrimary, fontWeight: FontWeight.w600, fontSize: 16),
        bodyLarge: const TextStyle(color: textPrimary, fontSize: 16),
        bodyMedium: const TextStyle(color: textSecondary, fontSize: 14),
        labelSmall: const TextStyle(color: textSecondary, fontSize: 11, fontWeight: FontWeight.w600),
      ),

      // -----------------------------------------
      // 3. Component Themes
      // -----------------------------------------
      
      // App Bar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: textPrimary),
        titleTextStyle: TextStyle(
          color: textPrimary, 
          fontSize: 18, 
          fontWeight: FontWeight.w600,
        ),
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: surface,
        elevation: 10,
        selectedItemColor: primaryBlue,
        unselectedItemColor: Color(0xFFA1A1AA), // Muted grey
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        type: BottomNavigationBarType.fixed,
      ),

      // Elevated Button Theme (The massive "Confirm Location" and "Login" buttons)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 54), // Standard fat buttons
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // Rounded pill/rect shape
          ),
        ),
      ),

      // Text Button Theme (For "Forgot ID?", "Register Now", "View All")
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryBlue,
          textStyle: const TextStyle(
            fontSize: 14, 
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Input Decoration (TextFields for Login / Form inputs)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: const TextStyle(color: textSecondary, fontSize: 14),
        labelStyle: const TextStyle(color: textSecondary, fontSize: 14),
        // Default Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderLight, width: 1),
        ),
        // Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderLight, width: 1),
        ),
        // Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
        // Error Border
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: statusRejected, width: 1),
        ),
      ),

      // Card Theme (For dashboard widgets, recent activity items)
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: borderLight, width: 1), // Subtle border seen in recent activity
        ),
      ),
      
      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: borderLight,
        thickness: 1,
        space: 24,
      ),
    );
  }
}