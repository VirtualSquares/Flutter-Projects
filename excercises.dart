import 'dart:ffi';

void main() {
  // int age = 16;
  // String name = "Shravan";
  // double gpa = 4.6;
  List<String> x = ["Bob", "James","Jimigigmigy"];
  Map<String, int> y = {"Bob": 5, "James": 7, "Jimigigmigy": 5};

  // print(age.runtimeType);
  // print(x.runtimeType);
  // print(y.runtimeType);

  // for(int i = 0; i < x.length; i ++){
  //   print(x[i]);
  // }

  // for (var  i in x){
  //   print(i);
  // }

  // for(var i in y.keys){
  //   print(y[i]);
  // }

  // y.forEach((key, value) {
  //   print("$key, $value");
  // });

  // int product(x, y) {
  //   return (x * y);
  // }

  // print(product(5, 6));

  // int i = 50;
  // while(i < 101){
  //   if(i % 2 == 0){
  //     print(i);
  //   }
  //   i++;
  // }

  List<int> z = [1, 2, 3, 4, 5];
  print(z.first);
  print(z.last);
  print(z.isEmpty);
  z.add(6);
  z.remove(6);
  z.insert(0, 3);
  z.removeAt(4);
  print(z.contains(3));
  print(z.indexOf(3));
  z.sort();
  z.shuffle();
  print(z);

}
