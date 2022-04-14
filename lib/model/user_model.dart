class User{
  String? number;
  String? email;
  String? address;
  String? password;

  User({required this.number, required this.email, required this.address, required this.password});

  User.from({required this.email, required this.password});

  User.fromSign({required this.number, required this.email, required this.address});

  User.fromJson(Map<String, dynamic> json)
      : number = json['number'],
        address = json['address'],
        email = json['email'],
        password = json ['password'];

  Map<String, dynamic>toJson() => {
    'number' : number,
    'email' : email,
    'address' : address,
    'password' : password,
  };
}