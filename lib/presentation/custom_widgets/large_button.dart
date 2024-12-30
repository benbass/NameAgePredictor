import 'package:flutter/material.dart';


class LargeButton extends StatelessWidget {
  final Function callback;
  final String buttonText;
  const LargeButton({
    super.key,
    required this.callback, required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () => callback(),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              buttonText,
              style: themeData.textTheme.displayLarge!.copyWith(
                color: themeData.colorScheme.primaryContainer,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
