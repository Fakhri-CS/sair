class HealthResponse {
  final String service;
  final String version;
  final String status;
  final DateTime timestamp;

  HealthResponse({
    required this.service,
    required this.version,
    required this.status,
    required this.timestamp,
  });

  factory HealthResponse.fromJson(Map<String, dynamic> json) {
    return HealthResponse(
      service: json['service'] ?? '',
      version: json['version'] ?? '',
      status: json['status'] ?? '',
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() => {
    'service': service,
    'version': version,
    'status': status,
    'timestamp': timestamp.toIso8601String(),
  };
}