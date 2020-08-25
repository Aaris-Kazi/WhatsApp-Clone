class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel({this.name, this.message, this.time, this.avatar});
  List<ChatModel> dummydata = [
    new ChatModel(
      name: "Dolores Abernathy",
      message: "Welcome your new GOD",
      time: "00:00",
      avatar: "images/Dolores.jpg"
    )
  ];
}
