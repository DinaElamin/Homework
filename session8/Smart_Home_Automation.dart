
class smartHomeSystem {
  String name;
  bool isOn;

  smartHomeSystem(this.name, [this.isOn = false]);

  void turnOn() {
    isOn = true;
    print('$name is turned on.');
  }

  void turnOff() {
    isOn = false;
    print('$name is turned off.');
  }
}

class Light extends smartHomeSystem {
  late int _brightness;

  Light(super.name);

  set Brightness(int level) {
    _brightness = level;
    print('$name brightness set to $_brightness');
  }
}

class AirConditioner extends smartHomeSystem {
  late int _temperature;

  AirConditioner(super.name);

  set Temperature(int temp) {
    _temperature = temp;
    print('$name temperature set to $_temperature');
  }
}

class SecurityCamera extends smartHomeSystem {
  late bool _isMotion;

  SecurityCamera(super.name);

  set isMotion(bool motionDetection) {
    _isMotion = motionDetection;
    print('$name motion detection is $_isMotion');
  }
}
