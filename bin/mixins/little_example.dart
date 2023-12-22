// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  var admin = Admin(firstName: 'jesus', lastName: 'iron');
  var chatBot = ChatBot(id: '1');

  admin.sendElevatedMessage('This is a admin message!');

  chatBot.sendElevatedMessage('This is a chatbot message!');
}

class User {
  final String firstName;
  final String lastName;
  User({
    required this.firstName,
    required this.lastName,
  });
}

/// Admin ve ChatBot'umuz oldugunu varsayalim. Her ikisi de global chattede
/// one cikarilmis mesaj atabilsin. Yani ikisine de ayni fonksyionu yazacagiz.
/// void sendElevatedMessage(String message){
///   print('Sending a message with elevated importance $message');
/// }
/// Bu kodu iki ayri sinifta yazmak DRY prensibine aykiri ve gereksiz.
/// Ortak bir sinif acarsak yalnizca bir siniftan extends edilebilir.
/// O yuzden mixinler kullanisli olacaktir.
mixin CanSendElevatedMessage {
  void sendElevatedMessage(String message) {
    print('Sending a message with elevated importance $message');
  }
}

class Admin extends User with CanSendElevatedMessage {
  Admin({
    required String firstName,
    required String lastName,
  }) : super(
          firstName: firstName,
          lastName: lastName,
        );
}

class ChatBot with CanSendElevatedMessage {
  final String id;
  ChatBot({
    required this.id,
  });
}
