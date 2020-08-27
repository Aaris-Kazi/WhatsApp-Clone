class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel({this.name, this.message, this.time, this.avatar});
}

List<ChatModel> dummydata = [
  new ChatModel(
      name: "Dolores Abernathy",
      message: "Welcome to West World",
      time: "11:00",
      avatar: "images/Dolores.jpg"),
  new ChatModel(
      name: "Dolores Abernathy",
      message: "I'm just a daughter of a rancher",
      time: "00:00",
      avatar: "images/Dolores_Passed_Pawn.jpg")
];
