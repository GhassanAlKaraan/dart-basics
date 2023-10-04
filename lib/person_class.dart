class Person{
  String? name, gender;
  final int age;
  String? _sn; // Private variable

  // Person({this.name, this.gender, required this.age});

  Person(this.name, this.gender, this.age, ){shout();}

  void shout(){print("HEY!");}

  //Getter for the private field _sn, called sn
  //See how fat-arrow functions can just be names.
  String? get sn => _sn;
  // or String get sn=> _sn;  if _sn not nullable.

  //Setter: only possible for non-final variables.
  //It is not a function, you use it like this: o.setX = xyz;
  set setSn(String snNew){
    _sn = snNew;
  }

  //Static: you want a class but don't want to make objects out of it.
  //use it directly like this: ClassX.staticMethod();
  static final String _classSecret = "Lusieur";
  static get getSecret => _classSecret;


}