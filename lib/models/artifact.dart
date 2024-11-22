class Artifact {
  String? id;
  final String title;
  String? author;
  final String url;
  
  // Optional metadata
  String? excerpt;
  String? notes;
  int? readingTime;
  String? imageUrl;
  String? siteName;
  
  // User Interaction Flags
  bool isRead;
  bool isStarred;
  
  // Potentially large text content
  String? readableHTML;
  String? fullText;
  
  // Ownership and Timestamps
  String? userId;
  DateTime createdAt;
  DateTime? lastUpdatedAt;
  
  Artifact({
    this.id,
    required this.title,
    this.author,
    required this.url,
    this.excerpt,
    this.notes,
    this.readingTime,
    this.imageUrl,
    this.siteName,
    this.isRead = false,
    this.isStarred = false,
    this.readableHTML,
    this.fullText,
    this.userId,
    DateTime? createdAt,
    this.lastUpdatedAt,
  }) : this.createdAt = createdAt ?? DateTime.now();

  // Create from JSON
  factory Artifact.fromJson(Map<String, dynamic> json) {
    return Artifact(
      id: json['id'] as String?,
      title: json['title'] as String,
      author: json['author'] as String?,
      url: json['url'] as String,
      excerpt: json['excerpt'] as String?,
      notes: json['notes'] as String?,
      readingTime: json['readingTime'] as int?,
      imageUrl: json['imageUrl'] as String?,
      siteName: json['siteName'] as String?,
      isRead: json['isRead'] as bool? ?? false,
      isStarred: json['isStarred'] as bool? ?? false,
      readableHTML: json['readableHTML'] as String?,
      fullText: json['fullText'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt'] as String)
          : null,
      lastUpdatedAt: json['lastUpdatedAt'] != null 
          ? DateTime.parse(json['lastUpdatedAt'] as String)
          : null,
    );
  }

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'url': url,
      'excerpt': excerpt,
      'notes': notes,
      'readingTime': readingTime,
      'imageUrl': imageUrl,
      'siteName': siteName,
      'isRead': isRead,
      'isStarred': isStarred,
      'readableHTML': readableHTML,
      'fullText': fullText,
      'userId': userId,
      'createdAt': createdAt.toIso8601String(),
      'lastUpdatedAt': lastUpdatedAt?.toIso8601String(),
    };
  }

  // Copy with method for immutable updates
  Artifact copyWith({
    String? id,
    String? title,
    String? author,
    String? url,
    String? excerpt,
    String? notes,
    int? readingTime,
    String? imageUrl,
    String? siteName,
    bool? isRead,
    bool? isStarred,
    String? readableHTML,
    String? fullText,
    String? userId,
    DateTime? createdAt,
    DateTime? lastUpdatedAt,
  }) {
    return Artifact(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      url: url ?? this.url,
      excerpt: excerpt ?? this.excerpt,
      notes: notes ?? this.notes,
      readingTime: readingTime ?? this.readingTime,
      imageUrl: imageUrl ?? this.imageUrl,
      siteName: siteName ?? this.siteName,
      isRead: isRead ?? this.isRead,
      isStarred: isStarred ?? this.isStarred,
      readableHTML: readableHTML ?? this.readableHTML,
      fullText: fullText ?? this.fullText,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
    );
  }

  @override
  String toString() {
    return 'Artifact(id: $id, title: $title, author: $author, url: $url)';
  }
}