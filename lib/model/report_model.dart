
import 'package:flutter/material.dart';
import 'package:sair_cpa/core/enums/app_enums.dart';
import 'package:sair_cpa/core/extensions/enum_extensions.dart';
import 'package:sair_cpa/generated/l10n.dart';

class ReportModel {
  final String id;
  final String citizenId;
  final String? officerId;
  final String zoneId;
  final double lat;
  final double lng;
  final String address;
  final String accidentType;
  final String description;
  final List<String> platesNumber;
  final DateTime occurredAt;
  final LocationSource locationSource;
  final List<String> mediaUrls;
  final ReportStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  ReportModel({
    required this.id,
    required this.citizenId,
    this.officerId,
    required this.zoneId,
    required this.lat,
    required this.lng,
    required this.address,
    required this.accidentType,
    required this.description,
    required this.platesNumber,
    required this.occurredAt,
    required this.locationSource,
    required this.mediaUrls,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return ReportModel(
      id: json['id'] ?? '',
      citizenId: json['citizenId'] ?? '',
      officerId: json['officerId'],
      zoneId: json['zoneId'] ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
      address: json['address'] ?? '',
      accidentType: json['accidentType'] ?? '',
      description: json['description'] ?? '',
      platesNumber: List<String>.from(json['platesNumber'] ?? []),
      occurredAt: DateTime.parse(json['occurredAt']),
      locationSource:
      LocationSourceX.fromString(json['locationSource']),
      mediaUrls: List<String>.from(json['mediaUrls'] ?? []),
      status: ReportStatusX.fromString(json['status']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'citizenId': citizenId,
    'officerId': officerId,
    'zoneId': zoneId,
    'lat': lat,
    'lng': lng,
    'address': address,
    'accidentType': accidentType,
    'description': description,
    'platesNumber': platesNumber,
    'occurredAt': occurredAt.toIso8601String(),
    'locationSource': locationSource.value,
    'mediaUrls': mediaUrls,
    'status': status.value,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };

}