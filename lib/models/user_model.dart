class UserModel {
  final String id;
  final String? email;
  final String? mpesaNumber;
  final double weight;
  final bool isPro;
  final bool isBanned;

  const UserModel({required this.id, this.email, this.mpesaNumber, this.weight = 1.0, this.isPro = false, this.isBanned = false});

  Map<String, dynamic> toMap() => {'id': id, 'email': email, 'mpesaNumber': mpesaNumber, 'weight': weight, 'isPro': isPro, 'isBanned': isBanned};
  factory UserModel.fromMap(Map<String, dynamic> m) => UserModel(id: m['id'] ?? '', email: m['email'], mpesaNumber: m['mpesaNumber'], weight: (m['weight'] ?? 1).toDouble(), isPro: m['isPro'] ?? false, isBanned: m['isBanned'] ?? false);
}
