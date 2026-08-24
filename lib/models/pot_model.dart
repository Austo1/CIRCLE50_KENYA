class PotModel {
  final double total;
  const PotModel({this.total = 0});

  double get winner => total * .30;
  double get supporter => total * .10;
  double get light => total * .10;
  double get judges => total * .05;
  double get reserve => total * .45;

  Map<String, double> distribution() => {'winner': winner, 'supporter': supporter, 'light': light, 'judges': judges, 'reserve': reserve};
}
