import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:uofthacks/domain/view_model.dart';
import 'package:uofthacks/ui/card_view.dart';

class VerifyCard extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return ScopedModelDescendant<ViewModel>(
        builder: (context, child, model) => Scaffold(
          body: CardView(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.check),
            onPressed: () => model.AddCard(),
          ),
        ),
      );
    }
}