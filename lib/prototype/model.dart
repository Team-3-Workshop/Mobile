class User {
  final String success;
  final String massage;
  final String data;

  const User({
    required this.success,
    required this.massage,
    required this.data,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      success: json['success'],
      massage: json['massage'],
      data: json['data'],
    );
  }
}
