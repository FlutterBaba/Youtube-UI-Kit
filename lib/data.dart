class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Flutter Baba',
  profileImageUrl:
      'https://lh3.googleusercontent.com/a-/AOh14GgL6nuLtCSciCHfc49-2ZUHDdZBfoyMrTKMHPVG=s600-k-no-rp-mo',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'ar18Y64kEzA',
    author: currentUser,
    title:
        'Flutter Tutorial for Beginners (Introduction to course) Tastee Food App With Admin Panel',
    thumbnailUrl: 'https://i.ytimg.com/vi/ar18Y64kEzA/hqdefault.jpg',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: '2RHTdET2zeM',
    title: 'Flutter E-commerce app',
    thumbnailUrl: 'https://i.ytimg.com/vi/2RHTdET2zeM/maxresdefault.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'r6FmGVNMx1w',
    author: currentUser,
    title: 'Flutter Coffee App Ui',
    thumbnailUrl: 'https://i.ytimg.com/vi/r6FmGVNMx1w/maxresdefault.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'ar18Y64kEzA',
    author: currentUser,
    title:
        'Flutter Tutorial for Beginners (Introduction to course) Tastee Food App With Admin Panel',
    thumbnailUrl: 'https://i.ytimg.com/vi/ar18Y64kEzA/hqdefault.jpg',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: '2RHTdET2zeM',
    title: 'Flutter E-commerce app',
    thumbnailUrl: 'https://i.ytimg.com/vi/2RHTdET2zeM/maxresdefault.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'r6FmGVNMx1w',
    author: currentUser,
    title: 'Flutter Coffee App Ui',
    thumbnailUrl: 'https://i.ytimg.com/vi/r6FmGVNMx1w/maxresdefault.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];
