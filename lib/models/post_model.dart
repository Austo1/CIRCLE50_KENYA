class PostModel {
  final String id;
  final String authorId;
  final String mediaUrl;
  final bool isVideo;
  final int likes;
  final int views;
  final double score;

  const PostModel({required this.id, required this.authorId, required this.mediaUrl, this.isVideo = true, this.likes = 0, this.views = 0, this.score = 0});
  Map<String, dynamic> toMap() => {'id': id, 'authorId': authorId, 'mediaUrl': mediaUrl, 'isVideo': isVideo, 'likes': likes, 'views': views, 'score': score};
}
