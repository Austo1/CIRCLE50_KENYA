import '../models/user_model.dart';

class WeightCalculator {
  static double forUser(UserModel user) => user.weight;

  static double score({required int likes, required int views, double weight = 1.0}) {
    if (views <= 0) return 0;
    return weight * ((likes * 3) + views) / views;
  }
}
