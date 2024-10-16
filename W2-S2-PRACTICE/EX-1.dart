enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final String zipCode;
  Address({required this.street, required this.city, required this.zipCode});

  @override
  String toString() {
    return "street: ${street} city:${city} zipCode:${zipCode}";
  }
}

class Employee {
  final String? _name;
  double _baseSalary = 40000;
  List<Skill>? _skills;
  Address? _address;
  int? _yearsOfExperience;

  Employee(this._name, this._skills, this._address, this._yearsOfExperience);

  Employee.mobileDeveloper(this._name, this._address, this._yearsOfExperience) {
    _skills = [Skill.DART, Skill.FLUTTER, Skill.OTHER];
  }
  void yearEXPSalary() {
    this._baseSalary = _baseSalary + (_yearsOfExperience! * 2000);
  }

  void skillbonus() {
    for (var skill in _skills!) {
      if (skill == Skill.FLUTTER) {
        this._baseSalary = _baseSalary + 5000;
      } else if (skill == Skill.DART) {
        this._baseSalary = _baseSalary + 3000;
      } else {
        this._baseSalary = _baseSalary + 1000;
      }
    }
  }

  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}');
    print('Year experience: $_yearsOfExperience');
    print('Skill :$_skills');
    print("Address :$_address");
  }
}

void main() {
  Address address = Address(street: '6A', city: 'PhnomPenh', zipCode: '12345');
  var emp1 = Employee("socheat", [Skill.DART], address, 2);
  emp1.yearEXPSalary();
  emp1.skillbonus();
  emp1.printDetails();
  print("\n");
  var emp2 = Employee.mobileDeveloper("Chetra", address, 5);
  emp2._skills = [Skill.FLUTTER];
  emp2.yearEXPSalary();
  emp2.skillbonus();
  emp2.printDetails();
}
