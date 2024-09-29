abstract class Vehicle {
  void start();

  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car engine started.');
  }

  @override
  void stop() {
    print('Car brakes applied.');
  }
}

class Bicycle extends Vehicle {
  @override
  void start() {
    print('Started pedaling the bicycle.');
  }

  @override
  void stop() {
    print('Bicycle stopped.');
  }
}
