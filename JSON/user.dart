class User {
  final String name;
  final int age;
  final double height;
  final bool isStudent;
  final String? nickname;
  final List<String> hobbies;

  const User({
    required this.name,
    required this.age,
    required this.height,
    required this.isStudent,
    this.nickname,
    this.hobbies = const [],
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json['name'] as String,
    age: json['age'] as int,
    height: (json['height'] as num).toDouble(),
    isStudent: json['isStudent'] as bool,
    nickname: json['nickname'] as String?,
    hobbies: (json['hobies'] as List<dynamic>)
        .map((dynamic e) => e as String)
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'height': height,
    'isStudent': isStudent,
    if (nickname != null) 'nickname': nickname,
    'hobies': hobbies,
  };
}
