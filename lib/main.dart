class Player {
  final String name;
  int xp;
  String team;
  int age;

  void sayHello(){
    print("Hi my name is $name");
  }

  Player({required this.name, required this.xp, required this.team, required this.age});

  Player.createBluePlayer({required String name, required int age, }) :
        this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age) :
        this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;


  Player.fromJson(Map<String, dynamic> playerJson)
  : name = playerJson["name"],
   xp = playerJson["xp"],
  age = playerJson["age"],
  team = playerJson["team"];

}


void main(){

  var player = Player.createBluePlayer(
      name : "nico",
      age: 20,
  );

  var player3 = Player.fromJson({
    "name" : "Kevin",
  "xp": 30,
  "age" : 21,
  "team" : "blue",

  });


  player.sayHello();

  var player2 =  Player.createRedPlayer("beomjin", 21 );

  player2.sayHello();

  player3.sayHello();
}