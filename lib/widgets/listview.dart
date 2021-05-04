import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListBuilderDemo extends StatefulWidget {
  @override
  _ListBuilderDemoState createState() => _ListBuilderDemoState();
}

class _ListBuilderDemoState extends State<ListBuilderDemo> {
  final items = List<String>.generate(20, (i) => 'Item Count : $i');
  List<String> itemslist = [];
  final TextEditingController ctrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            TextFormField(
              autofocus: true,
              controller: ctrl,
              onEditingComplete: () {
                itemslist.add(ctrl.text);
                ctrl.clear();
                setState(() {});
              },
            ),
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  leading: Icon(
                    Icons.account_box,
                  ),
                  title: Text(
                    itemslist[index],
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
