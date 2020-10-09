class Entry {
  int id;
  DateTime date;
  double entryAmount;
  bool done = false;
  bool detached = false;

  Entry(this.id, this.date, this.entryAmount, this.done, this.detached);
}
