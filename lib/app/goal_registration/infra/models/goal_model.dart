import 'package:save_money_reminder_app/app/goal_registration/domain/entities/contribution.dart';
import 'package:save_money_reminder_app/app/goal_registration/domain/entities/goal.dart';

class GoalModel extends Goal {
  final int id;
  final String name;
  final String description;
  final double target;
  final double actualValue;
  final int frequency;
  final int deadline;
  final List<Contribution> contributions;

  const GoalModel({
    this.id,
    this.name,
    this.description,
    this.target,
    this.actualValue,
    this.frequency,
    this.deadline,
    this.contributions,
  });
}
