class User {
  int? id;
  String name;
  String email;
  String password;
  String cell;
  String address;
  DateTime? dob;
  String gender;
  String? image;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.cell,
    required this.address,
    this.dob,
    required this.gender,
    this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'cell': cell,
      'address': address,
      'dob': dob?.toIso8601String(),
      'gender': gender,
      'image': image,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      cell: json['cell'],
      address: json['address'],
      dob: DateTime.parse(json['dob']),
      gender: json['gender'],
      image: json['image'],
    );
  }
}
