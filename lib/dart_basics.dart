import 'dart:io';

void mainy() {
  helloWorld();
}

void helloWorld() {
  //Variables:
  String sentence = "Hello world";
  double y = 10.4;
  int x = 7;
  var anyVariable = 8;
  var nullVariable;
  dynamic anyOtherVariable = '9';

  //Lists:
  var myList = [1, 2, 3];
  // print(myList);
  // print(myList[0]);
  myList[0] = 8;

  var emptyList = [];
  emptyList.add(47);
  emptyList.addAll([4, 5, 6]);
  emptyList.insert(3, 33);
  emptyList.insertAll(2, [0, 9, 8]);

  var mixedList = [1, "John", 90, "bob", 43.8, 90.234];
  mixedList.remove("John");
  mixedList.removeAt(1);

  //Maps
  var myMap = {
    "one": 1,
    "two": "two",
    "three": 3,
  };
  // print(myMap["one"]);
  // print(myMap.values);
  // print(myMap.keys);

  // print(myMap.length);
  myMap["four"] = "four";
  myMap.addAll({"five": 5, "six": 6.0});
  myMap.remove("two");

  myMap.clear();

  //For loop
  // for(var i = 10; i>=0; i--){
  //   print(i);
  // }
  // for(int i =0; i<10; i++){
  //   if(i == 5){
  //     print("hehe");
  //     continue;
  //   }
  //   print(i);
  // }

  var names = ["John", "Bob", "Alice"];
  // for(var name in names){
  //   print(name);
  // }

  //While loop
  var num = 10;
  // while(num>0){
  //   print(num);
  //   num--;
  // }

  //Logic
  if (true) {
  } else if (true) {
  } else {}

  //Switch
  // switch(num){
  //   case 9 :
  //   case 10:
  //     print("bingo"); break;
  //   case 11:
  //     print("Wen raye7?");
  //   default:
  //     print("Case Not fount");
  // }

  //Functions
  myFunc() {
    print("Hello");
  }

  myFunc1(String name1, [name2]) {} //name2 is an optional argument
  myFunc2(String name1, {name2}) {} //name2 is a named argument

  String? printString() {
    return null;
  }

  (int, String) printName() {
    return (0, "Hello world"); // return a record - dart3.0+
  }

  var (number10, name10) = printName(); // assign record
  (int, String) myRecord = printName();
  var num2 = printName().$2; // choose second value from record

  ({int age, String name}) checkHuman(int x, String y) {
    //the brackets are just to force you name the arguments
    return (age: x, name: y);
  }

  // Function printStuff() {
  //   return () {
  //     print("WTF?");
  //   };
  // }
  // String printStuff() => "Stuff"; // Fat arrow functions
  // (){print("Hi"); }; //anonymous functions

  //Parse int
  var a1 = "10", a2 = "34.89";
  var b1 = int.parse(a1);
  var b2 = double.parse(a2);

  //toString
  var e1 = 25, e2 = "67";
  var f1 = e1.toString();
  String f2 = e1.toString() + e2;

  //Null Safety   ?.  !
  int? num01;
  // print(num01 ?? 0);

  String? str01;
  // print(str01!.length); // or
  // print(str01.length ?? 0);
}
