import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputsView extends StatelessWidget {
  final textController = TextEditingController(
      text:
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView(
        children: [
          const SizedBox(height: 15),
          TextField(
            autofocus: true,
            decoration: InputDecoration(hintText: 'Awesome Textfield'),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              errorText: "You're doing it wrong",
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.multiline,
            controller: textController,
            minLines: 5,
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
