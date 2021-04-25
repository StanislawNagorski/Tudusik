class Task {
  final String name;
  bool isCheck;

  Task({this.name, this.isCheck = false});

  void toggleCheckBox() {
    isCheck = !isCheck;
  }

  Task.fromMap(Map<String, dynamic> json)
      : name = json['name'],
        isCheck = json['isCheck'] == 1 ? true : false;

  Map<String, dynamic> toMap() => {
        'name': name,
        'isCheck': isCheck ? 1 : 0,
      };
}
