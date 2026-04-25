
class NotificationModel {
  final String id;
  final String userId;
  final String title;
  final String message;
  final String reportId;
  final DateTime createdAt;

  NotificationModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.message,
    required this.reportId,
    required this.createdAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      reportId: json['reportId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String).toLocal(), 
    );
  }
}