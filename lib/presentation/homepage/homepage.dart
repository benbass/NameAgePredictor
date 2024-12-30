import 'package:flutter/material.dart';
import 'package:name_age_predictor/presentation/homepage/widgets/search_form.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Name Age Predictor",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SearchForm(),
      ),
    );
  }
}
