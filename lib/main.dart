class Strong {

  final double strengthLevel = 15000;
}

class QuickRunner{
  void runQuick(){
    print('ruuuuuun');
  }
}

class Tall {
  final double height = 1.99;
}

abstract class Human {
  final String name;
  Human({required this.name});
  void sayHello(){
    print("HI my name is $name");
  }
}

class Player extends Human with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
    required String name
}) : super(name: name);

  @override
  void sayHello(){
    super.sayHello();
    print("and I p;ay for ${team}");
  }

}

class Horse with Strong, QuickRunner{}

class kid with QuickRunner{}

enum Team { red, blue }
enum XPLevel { beginner,medium, pro}

void main(){
  var player = Player(team: Team.red, name: 'blue');

}