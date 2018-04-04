import 'dart:math';

class Task {
  String id;
  String title;
  Random random = new Random();

  Task(this.title) {
    this.id = random.nextDouble().toString();
  }
}