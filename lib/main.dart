import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';
import 'application/api_query_bloc.dart';
import 'generated/l10n.dart';
import 'injections.dart' as di;
import 'package:name_age_predictor/presentation/homepage/homepage.dart';
import 'package:name_age_predictor/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      BlocProvider(
        create: (context) => di.getItI<ApiQueryBloc>(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('de', 'DE'),
          Locale('fr', 'FR'),
        ],
        theme: AppTheme.lightTheme,
        title: 'Name Age Predictor',
        home: SafeArea(
          child: Homepage(),
        ),
      );
    });
  }
}
