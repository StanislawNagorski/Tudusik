class Task{

  final String name;
  bool isCheck;

  Task({this.name, this.isCheck = false});

  void toggleCheckBox(){
    isCheck = !isCheck;
  }

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        isCheck = json['isCheck'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'isCheck': isCheck,
  };

}