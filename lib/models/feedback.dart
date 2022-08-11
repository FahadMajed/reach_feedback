class Feedback {
  final String title;
  final String body;
  final bool isResearchersApp;
  final String version;
  final bool isIOS;
  final bool isAndriod;
  final DateTime dateTime;

  Feedback({
    required this.title,
    required this.body,
    required this.isResearchersApp,
    required this.version,
    required this.isIOS,
    required this.isAndriod,
    required this.dateTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'body': body,
      'isResearchersApp': isResearchersApp,
      'version': version,
      'isIOS': isIOS,
      'isAndriod': isAndriod,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      isResearchersApp: map['isResearchersApp'] ?? false,
      version: map['version'] ?? '',
      isIOS: map['isIOS'] ?? false,
      isAndriod: map['isAndriod'] ?? false,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
    );
  }

  Feedback copyWith({
    String? title,
    String? body,
    bool? isResearchersApp,
    String? version,
    bool? isIOS,
    bool? isAndriod,
    DateTime? dateTime,
  }) {
    return Feedback(
      title: title ?? this.title,
      body: body ?? this.body,
      isResearchersApp: isResearchersApp ?? this.isResearchersApp,
      version: version ?? this.version,
      isIOS: isIOS ?? this.isIOS,
      isAndriod: isAndriod ?? this.isAndriod,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
