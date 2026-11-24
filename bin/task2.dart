class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    int sum = 0;
    for (Holiday h in holidays) {
      sum += h.day;
    }
    return sum / holidays.length;
  }
}

void main() {
  Holiday h1 = Holiday('Independence Day', 4, 'July');
  Holiday h2 = Holiday('Summer Fest', 20, 'July');

  print(Holiday.inSameMonth(h1, h2));
  print(Holiday.avgDate([h1, h2]));
}