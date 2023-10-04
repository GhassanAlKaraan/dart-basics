import 'package:dart_basics/driving_interface.dart';

class Vehicle {
  final String sn;
  final int nbOfWheels;
  int speed;

  Vehicle({required this.sn, required this.nbOfWheels, this.speed = 0});

  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle implements Driving{
  Car({super.nbOfWheels = 4, super.sn = "whatever"});

  @override
  void decelerate() {
    // TODO: implement decelerate
  }

  @override
  bool isEngineRunning() {
    // TODO: implement isEngineRunning
    throw UnimplementedError();
  }

  // @override
  // void accelerate() {
  //   //super.accelerate();
  //   speed += 20;
  // }
}
