import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_age_predictor/presentation/custom_widgets/large_button.dart';
import 'package:sizer/sizer.dart';

import '../../application/api_query_bloc.dart';
import '../../core/ui_spaces.dart';
import '../../generated/l10n.dart';

class ResponsePage extends StatelessWidget {
  const ResponsePage({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var localization = S.of(context);

    final TextStyle nameStyle = TextStyle(
      fontSize: 26.sp, //50.0,
      fontWeight: FontWeight.bold,
    );
    final TextStyle ageStyle = TextStyle(
      fontSize: 44.sp, //100.0,
      fontWeight: FontWeight.bold,
      color: themeData.colorScheme.onPrimaryContainer,
    );
    final TextStyle errorStyle = nameStyle.copyWith(
      color: Colors.red,
      fontSize: 18.sp,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<ApiQueryBloc, ApiQueryState>(
          builder: (context, state) {
            return SizedBox(
              height: Adaptive.h(100), //MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: marginHeight,
                  children: [
                    if (state.isSubmitting) ...[
                      CircularProgressIndicator(
                        color: themeData.colorScheme.secondary,
                      ),
                    ] else if (state.response!.age == null) ...[
                      Text(
                        state.response!.name,
                        style: nameStyle,
                      ),
                      Text(localization.responsePage_notFound),
                      LargeButton(
                        callback: () {
                          Navigator.of(context).pop();
                        },
                        buttonText:
                            localization.responsePage_TrayAgainDifferent,
                      ),
                    ] else if (state.response!.age == -1) ...[
                      // http response != 200 or network error
                      Text(
                        state.response!.name,
                        style: errorStyle,
                        textAlign: TextAlign.center,
                      ),
                    ] else ...[
                      Expanded(
                        child: ListView(
                          children: [
                            SizedBox(
                              height: paddingHeight,
                            ),
                            Center(
                              child: Text(
                                state.response!.name,
                                style: nameStyle,
                              ),
                            ),
                            SizedBox(
                              height: marginHeight,
                            ),
                            Center(
                              child: Text(localization.responsePage_is),
                            ),
                            SizedBox(
                              height: marginHeight,
                            ),
                            Center(
                              child: Text(
                                state.response!.age.toString(),
                                style: ageStyle,
                              ),
                            ),
                            SizedBox(
                              height: marginHeight,
                            ),
                            Center(
                              child: Text(localization.responsePage_yearsOld),
                            ),
                            SizedBox(
                              height: paddingHeight,
                            ),
                          ],
                        ),
                      ),
                      if (state.countryName != null &&
                          state.countryName!.isNotEmpty) ...[
                        Text(localization.responsePage_in),
                        Text(
                          state.countryName!,
                          style: nameStyle.copyWith(
                            fontSize: 20.sp, //36.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: paddingHeight),
                        child: LargeButton(
                          callback: () {
                            Navigator.of(context).pop();
                          },
                          buttonText: localization.responsePage_tryAgain,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
