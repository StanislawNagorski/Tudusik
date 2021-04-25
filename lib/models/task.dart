class Task {
  final String name;
  bool isCheck;

  Task({this.name, this.isCheck = false});

  void toggleCheckBox() {
    isCheck = !isCheck;
  }

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        isCheck = json['isCheck'] == 1 ? true : false;

  Map<String, dynamic> toJson() => {
        'name': name,
        'isCheck': isCheck ? 1 : 0,
      };
}
