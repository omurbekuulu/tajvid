import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              weight: 400,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Темалар',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(Icons.menu),
            SizedBox(
              width: 20,
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Classic Texts ,These are short, famous texts in English'
            ' from classic sources like the Bible or Shakespeare. Some'
            ' texts have word definitions and explanations to help you.'
            ' Some of these texts are written in an old style of English.'
            ' Try to understand them, because the English that we speak today'
            ' is based on what our great, great, great, great grandparents spoke before!'
            ' Of course, not all these texts were originally written in English.'
            ' The Bible, for example, is a translation. But they are all well known'
            ' in English today, and many of them express beautiful thoughts.',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
