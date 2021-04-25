class Task {
  final int id;
  final String name;
  bool isCheck;

  Task({this.id, this.name, this.isCheck = false});

  void toggleCheckBox() {
    isCheck = !isCheck;
  }

  Task.fromMap(Map<String, dynamic> json)
      : id = json['_id'],
        name = json['name'],
        isCheck = json['isCheck'] == 1 ? true : false;

  Map<String, dynamic> toMap() => {
        '_id' : id,
        'name': name,
        'isCheck': isCheck ? 1 : 0,
      };
}
