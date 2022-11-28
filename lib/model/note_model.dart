class Note {
  final String title;
  final String description;
  final DateTime updatedAt;
  final int id;
  final DateTime createdAt;

  Note({
    required this.title,
    required this.description,
    required this.updatedAt,
    required this.id,
    required this.createdAt,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
        title: json['title'],
        description: json['description'],
        updatedAt: json['updatedAt'] ?? '',
        id: json['id'],
        createdAt: json['createdAt'] ?? '');
  }
}
