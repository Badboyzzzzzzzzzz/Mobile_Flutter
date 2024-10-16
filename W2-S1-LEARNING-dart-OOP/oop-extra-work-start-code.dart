// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
  @override
  String toString() {
    return "${type} height ${height}";
  }
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

enum Room {
  Bedroom,
  Bathroom,
  kitchen;

  // int getNumberOfTypes() {
  //   return Room.values.length;
  // }
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
  List<Room> rooms;
  List<Tree> trees = []; // by default empty
  Door door;
  Window window;
  Roof roof;

  House(this.address, this.door, this.roof, this.window, this.rooms);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void myHouse() {
    print("${roof}");
    print("${window}");
    print("${door}");
    print("Address: ${address}");
    print(trees);
    print("we have ${rooms}");
  }
}

void main() {
  Door door = Door(3, "wood", 1, "bottomLeft");
  Window window = Window("red", 'leftSide');
  Roof roof = Roof('Triangle');
  Tree newTree = Tree('Apple', 3);
  House house = House("CCV", door, roof, window, Room.values);
  house.addTree(newTree);
  house.myHouse();
}
