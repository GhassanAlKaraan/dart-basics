//Futures use extensive exception handling.
// void main() async{
//   String name = await giveNameAfterSeconds();
//   print(name);
// }

// Future<String> giveNameAfterSeconds() {
//   return Future(() {
//     return "Hello";
//   });
// }

void main(){
  //Manual usage without using async-await
  giveNameAfterSeconds().then((value) => print(value));
}

Future<String> giveNameAfterSeconds() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hello";
  });
}

