void setup() {
  printHello();
  printMessage("Dette er en besked");
  printNameAndAge("Sofus Juul", 25);
}

void printHello() {
  println("Hello from the method");
}

void printMessage(String message) {
  println(message);
}

void printNameAndAge(String name, int age) {
  println("My name is " + name + ", I am " + age + " years old");
}
