import 'package:flutter/material.dart';
import 'package:multi_language_app/translations.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/language_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print(translations.currentLanguage);
  }

  @override
  Widget build(BuildContext context) {

    final _langBloc = context.bloc<LanguageBloc>();


    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                child: Text(
                  translations.translate("title"),
                  style: TextStyle(color: Colors.black54, fontSize: 25),
                ),
                padding: EdgeInsetsDirectional.only(start: 15, bottom: 20, top: 100),
              ),
              Padding(
                child: Text(
                  translations.translate("content"),
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                padding: EdgeInsetsDirectional.only(start: 18),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () async {
                    await translations.setNewLanguage("fa");
                    _langBloc.add(LANGUAGES.FA);
                    setState(() {});
                  },
                  child: Text("fa"),
                ),
                RaisedButton(
                  onPressed: () async {
                    await translations.setNewLanguage("fr");
                    _langBloc.add(LANGUAGES.FR);
                    setState(() {});
                  },
                  child: Text("fr"),
                ),
                RaisedButton(
                  onPressed: () async {
                    await translations.setNewLanguage("en");
                    _langBloc.add(LANGUAGES.EN);
                    setState(() {});
                  },
                  child: Text("en"),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
