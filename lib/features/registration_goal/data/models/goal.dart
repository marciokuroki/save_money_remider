import 'package:save_money_reminder_app/features/registration_goal/data/models/configuration.dart';
import 'package:save_money_reminder_app/features/registration_goal/data/models/entry.dart';

class Goal {
  String name;
  int deadline;
  double amount;
  Configuration configuration;
  List<Entry> _entries;

  List<Entry> get entries => _entries;

  Goal(this.name, this.deadline, this.amount, this.configuration);
}
