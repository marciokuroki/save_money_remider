import 'contribution.dart';

class Goal {
  final int id;
  final String name;
  final String description;
  final double target;
  final double actualValue;
  final int frequency;
  final int deadline;
  final List<Contribution> contributions;

  const Goal(
      {this.id,
      this.name,
      this.description,
      this.target,
      this.actualValue,
      this.frequency,
      this.deadline,
      this.contributions});
}
