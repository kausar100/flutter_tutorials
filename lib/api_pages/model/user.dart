class UserInfo {
  final String username;
  final String email;
  final String urlAvatar;

  UserInfo(
      {required this.username, required this.email, required this.urlAvatar});

  static UserInfo userFromJson(json) => UserInfo(
      username: json['username'],
      email: json['email'],
      urlAvatar: json['urlAvatar']);
}