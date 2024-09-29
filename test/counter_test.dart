import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_demo/counter.dart';

void main() {
  group("Test start, increment, decrement", () {
    test("Counter value should be increment", () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
    test("Counter value should be increment", () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
