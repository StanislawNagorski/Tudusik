class Task{

  final String name;
  bool isCheck;

  Task({this.name, this.isCheck = false});

  void toggleCheckBox(bool value){
    isCheck = value;
  }
}