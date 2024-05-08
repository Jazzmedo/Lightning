import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ButtonStyle buts = ElevatedButton.styleFrom(
      fixedSize: const Size(115, 50),
      elevation: 0,
      padding: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));
  String userInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 220, 248),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 55),
                    width: 155,
                    height: 155,
                    child: Image.asset('images/nata.png')),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 50.0, left: 50.0, top: 10, bottom: 60),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        text =
                            text.replaceAll(' ', ''); // Concatenate user input
                        text = text.replaceAll('+2', "");
                        while (text.length > 11) {
                          text = text.trimLeft().substring(1);
                        }
                        userInput = text; // Concatenate user input
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      labelText: 'Enter Phone Number',
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(),
                      errorBorder: const OutlineInputBorder(),
                      focusedErrorBorder: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Link(
                        uri: Uri.parse("https://wa.me/+20${userInput}"),
                        builder: (context, followLink) {
                          return ElevatedButton(
                            style: buts,
                            onPressed: followLink,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: SizedBox(
                                width: 125,
                                height: 60,
                                child: Card(
                                  elevation: 0,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'img/wat.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(
                                        width: 0,
                                      ),
                                      const Text(
                                        "WhatsApp",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Link(
                        uri: Uri.parse("https://t.me/+2${userInput}"),
                        builder: (context, followLink) {
                          return ElevatedButton(
                            style: buts,
                            onPressed: followLink,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: SizedBox(
                                width: 125,
                                height: 60,
                                child: Card(
                                  elevation: 0,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.telegram_outlined,
                                          color: Color(0xff2eaae0)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Telegram",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 40, right: 40, left: 40, bottom: 70),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(width: 1, color: Colors.red),
                  ),
                  child: const Text(
                    "⚠️ Some Number Might Not Work Because of Their Privacy Settings",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Done By JazzMedo",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 141, 47)),
                )
              ],
            ),
          ),
        ));
  }
}
