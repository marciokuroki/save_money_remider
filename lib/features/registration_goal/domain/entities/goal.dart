import 'contribution.dart';

class Goal {
  int id;
  String name;
  String description;
  double target;
  double actualValue;
  int frequency;
  int deadline;
  List<Contribution> contributions;
}
