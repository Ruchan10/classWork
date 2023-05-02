class arModel {
  var arr = ["ruchan", "cat", "dog"];
  int count = -1;
  double calcSI(double p, double t, double r) {
    return (p * t * r) / 100;
  }

  double areaCircle(double r) {
    return 22 / 7 * r * r;
  }

  String cName() {
    count++;
    return arr[count];
  }
}
