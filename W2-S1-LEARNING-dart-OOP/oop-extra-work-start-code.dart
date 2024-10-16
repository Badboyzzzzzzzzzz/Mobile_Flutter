// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}

class Window {
  String color;
  String location;
  Window(this.color, this.location);
  @override
  String toString() {
    return "Window ${color} on ${location}";
  }
}

class Roof {
  String type;
  Roof(this.type);
  @override
  String toString() {
    return "Roof ${type}";
  }
}

class Door {
  int height;
  int width;
  String material;
  String location;
  Door(this.height, this.material, this.width, this.location);
  @override
  String toString() {
    return "Door ${material} height: ${height}m width: ${width}m at $location";
  }
}

// Class House
class House {
  String address;
  List<Tree> trees = []; // by default empty
  Door door;
  Window window;
  Roof roof;

  House(this.address, this.door, this.roof, this.window);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void myHouse() {
    print("${roof}");
    print("${window}");
    print("${door}");
    print("Address: ${address}");

  }
}

void main() {
  Door door = Door(3, "wood", 1, "bottomLeft");
  Window window = Window("red", 'leftSide');
  Roof roof = Roof('Triangle');
  House house = House("CCV", door, roof, window);
  house.myHouse();
}
