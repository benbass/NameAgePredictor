import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_age_predictor/application/api_query_bloc.dart';
import 'package:name_age_predictor/core/ui_spaces.dart';

import 'package:name_age_predictor/presentation/custom_widgets/large_button.dart';
import 'package:name_age_predictor/presentation/homepage/widgets/country_dropdown.dart';
import 'package:name_age_predictor/presentation/response_page/response_page.dart';

import '../../../core/formkey.dart';
import '../../../generated/l10n.dart';
import '../../../injections.dart';
import '../../page_transitions/page_transition.dart';

class SearchForm extends StatelessWidget {
  SearchForm({
    super.key,
  });

  final GlobalKey<FormState> formKey = getItI<MyFormKey>().formKey;
  final TextEditingController controller = TextEditingController();
  final ValueNotifier<Map<String?, String?>?> selectedCountryNotifier =
      ValueNotifier<Map<String?, String?>?>(null);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final localization = S.of(context);

    late String validTerm;

    String? validation(String? value) {
      if (value == null || value.isEmpty || value == " ") {
        // We do not need any error text: error will be shown in a snack bar
        return "";
      }
      // We don't allow special characters and numbers but we allow letters in any alphabet and the hyphen
      if (!RegExp(r'^[\p{L}\s-]+$', unicode: true).hasMatch(value)) {
        return "";
      }
      validTerm = value;
      return null;
    }

    return Form(
      autovalidateMode: AutovalidateMode.disabled,
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingWidth),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: marginHeight),
              child: Text(localization.searchForm_introText),
            ),
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: themeData.colorScheme.onPrimary,
              ),
              cursorColor: themeData.colorScheme.onPrimary,
              cursorErrorColor: themeData.colorScheme.onPrimary,
              decoration: InputDecoration(
                hintText: localization.searchField_hintText,
                // We prevent error text from occupying space, even if it's null. (2 next lines)
                errorText: null,
                errorStyle: TextStyle(fontSize: 0),
              ),
              validator: validation,
            ),
            ValueListenableBuilder<Map<String?, String?>?>(
                valueListenable: selectedCountryNotifier,
                builder: (context, selectedCountry, child) {
                  return CountryDropdown(onCountrySelected: (countryData) {
                    selectedCountryNotifier.value = countryData;
                  });
                }),
            SizedBox(
              height: paddingHeight,
            ),
            LargeButton(
              callback: () {
                FocusScope.of(context).unfocus();
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<ApiQueryBloc>(context).add(
                    SendNamePressed(
                      name: validTerm,
                      countryId: selectedCountryNotifier.value?.values.first,
                      countryName: selectedCountryNotifier.value?.keys.first,
                    ),
                  );
                  controller.clear();
                  Navigator.push(
                    context,
                    SlideRightRoute(
                      page: Builder(
                        builder: (context) {
                          return ResponsePage();
                        },
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(localization.searchField_invalidValue),
                      duration: Duration(seconds: 4),
                      margin: EdgeInsets.only(bottom: marginHeight),
                    ),
                  );
                }
              },
              buttonText: S.of(context).searchButton_send,
            ),
          ],
        ),
      ),
    );
  }
}
