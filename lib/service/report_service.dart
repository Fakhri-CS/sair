import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/core/network/api_service.dart';
import 'package:sair_cpa/core/network/api_endpoints.dart';
import 'package:sair_cpa/model/report_model.dart';

class ReportService {
  final ApiService _apiService;

  ReportService(this._apiService);

  /// Creates a new accident report.
  /// Supports JSON or Multipart form data if photos are provided.
  Future<ReportModel> createReport({
    required double lat,
    required double lng,
    required String description,
    required String accidentType,
    required List<String> platesNumber,
    List<File>? photos,
  }) async {
    try {
      dynamic data;

      if (photos != null && photos.isNotEmpty) {
        // Prepare Multipart request
        final formDataMap = <String, dynamic>{
          'lat': lat.toString(),
          'lng': lng.toString(),
          'description': description,
          'accidentType': accidentType,
          'platesNumber': platesNumber, 
        };

        // Add photos - using 'photo' as per the system guide
        final multipartPhotos = <MultipartFile>[];
        for (final photo in photos) {
          multipartPhotos.add(
            await MultipartFile.fromFile(
              photo.path,
              filename: photo.path.split('/').last,
            ),
          );
        }
        
        formDataMap['photo'] = multipartPhotos;

        data = FormData.fromMap(formDataMap, ListFormat.multiCompatible);
      } else {
        // Regular JSON request
        data = {
          'lat': lat,
          'lng': lng,
          'description': description,
          'accidentType': accidentType,
          'platesNumber': platesNumber,
          'locationSource': 'gps',
          'occurredAt': DateTime.now().toIso8601String(),
        };
      }

      final response = await _apiService.post(kReportsEndpoint, data: data);
      
      if (response.statusCode == 201 || response.statusCode == 200) {
        return ReportModel.fromJson(response.data);
      } else {
        throw Exception('Failed to create report: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error creating report: $e');
    }
  }

  /// Fetches reports for the authenticated user with optional filters.
  Future<List<ReportModel>> getMyReports({
    String? status,
    String? from,
    String? to,
  }) async {
    try {
      final queryParameters = <String, dynamic>{};
      if (status != null) queryParameters['status'] = status;
      if (from != null) queryParameters['from'] = from;
      if (to != null) queryParameters['to'] = to;

      // Manual query param append as ApiService is basic
      String path = '$kReportsEndpoint/my';
      if (queryParameters.isNotEmpty) {
        final queryString = Uri(queryParameters: queryParameters).query;
        path = '$path?$queryString';
      }
      
      final response = await _apiService.get(path);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => ReportModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch reports: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching reports: $e');
    }
  }

  /// Fetches a specific report by ID.
  Future<ReportModel> getReportById(String id) async {
    try {
      final response = await _apiService.get('$kReportsEndpoint/$id');
      
      if (response.statusCode == 200) {
        return ReportModel.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch report detail: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching report detail: $e');
    }
  }

  /// Updates the status of a report (Officer/Admin only).
  Future<ReportModel> updateReportStatus(String id, String status) async {
    try {
      final response = await _apiService.put(
        '$kReportsEndpoint/$id/status',
        data: {'status': status},
      );
      
      if (response.statusCode == 200) {
        return ReportModel.fromJson(response.data);
      } else {
        throw Exception('Failed to update report status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error updating report status: $e');
    }
  }

  /// Uploads media URLs to an existing report.
  Future<void> uploadMedia(String id, List<String> mediaUrls) async {
    try {
      final response = await _apiService.post(
        '$kReportsEndpoint/$id/media',
        data: mediaUrls.length == 1 
            ? {'mediaUrl': mediaUrls.first} 
            : {'mediaUrls': mediaUrls},
      );
      
      if (response.statusCode != 200 && response.statusCode != 204) {
        throw Exception('Failed to upload media: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error uploading media: $e');
    }
  }
}

/// Provider for [ReportService].
final reportServiceProvider = Provider<ReportService>((ref) {
  return ReportService(ApiService());
});
