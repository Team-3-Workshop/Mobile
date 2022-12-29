class User {
  // final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String citizen;
  final String nik;
  final String address;
  final String date;
  final String phone;
  final String email;
  final String role;
  // final String createAt;
  // final String updateAt;

  const User({
    // required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.citizen,
    required this.nik,
    required this.address,
    required this.date,
    required this.phone,
    required this.email,
    required this.role,
    // required this.createAt,
    // required this.updateAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      // id: json['success'],
      firstName: json['success'],
      lastName: json['success'],
      fullName: json['success'],
      citizen: json['success'],
      nik: json['success'],
      address: json['success'],
      date: json['success'],
      phone: json['success'],
      email: json['success'],
      role: json['success'],
      // createAt: json['success'],
      // updateAt: json['success'],
    );
  }
}
