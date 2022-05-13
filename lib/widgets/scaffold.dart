import 'package:flutter/material.dart';

class WaitingScaffold extends Scaffold {
  const WaitingScaffold({Key? key, AppBar? appBar})
      : super(
          key: key,
          appBar: appBar,
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
}

class TextScaffold extends Scaffold {
  TextScaffold(String text, {Key? key, AppBar? appBar, TextStyle? textStyle})
      : super(
          key: key,
          appBar: appBar,
          body: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        );
}
