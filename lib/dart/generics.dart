// class Product {
//   final String name;
//   Product(this.name);
// }
//
// void main() {
//   List<Product> products = [Product("Shoes"), Product("Cap")];
//   print(products[1].name); //
// }

class Car<T> {
  T name;
  T age;
  Car(this.name, this.age);
}

void main() {
  Car car = Car("BMW", 12);
  print(car.age.runtimeType);
}