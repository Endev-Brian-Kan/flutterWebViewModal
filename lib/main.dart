import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(home: ModalBottomSheet()));
}

class ModalBottomSheet extends StatefulWidget {
  @override
  _ModalBottomSheetState createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: WebView(
              initialUrl: "https://en.wikipedia.org/wiki/Skin_cancer",
              javascriptMode: JavascriptMode.unrestricted,
            ),
            // padding: EdgeInsets.all(40.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Modal bottom sheet')),
        body: Center(
            child: RaisedButton(
                onPressed: _showModalSheet,
                child: const Text('Skin Cancer Further Info'))));
  }
}
