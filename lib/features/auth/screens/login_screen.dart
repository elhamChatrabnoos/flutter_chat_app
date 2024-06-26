import 'package:chat_app/common/widgets/custom_button.dart';
import 'package:chat_app/common/widgets/custom_text.dart';
import 'package:chat_app/common/widgets/custom_text_field.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../chat/screens/mobile_chat_lists_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login-screen';

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  Country? targetCountry;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    countryController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        backgroundColor: AppColors.lightGray3,
        foregroundColor: AppColors.appBarColor,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const CustomText(
              text: "ChatMe will need to verify your phone number.",
            ),
            const SizedBox(height: 20),
            CustomTextField(
              readOnly: true,
              controller: countryController,
              marginLeftRight: 20,
              marginTopBottom: 10,
              onTap: () {
                _pickCountry();
              },
              textSize: 14,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(),
              ),
              labelColor: AppColors.darkGray,
              cursorColor: AppColors.appBarColor,
              margin: 20,
              enableBorder: true,
              labelText: 'country',
              checkValidation: (p0) {
                if (p0!.isEmpty) {
                  return 'Please enter country code.';
                }
              },
            ),
            CustomTextField(
              controller: phoneController,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
              checkValidation: (p0) {
                if (p0!.isEmpty) {
                  return 'Please enter valid phone number.';
                }
              },
              keyboardType: TextInputType.phone,
              textSize: 14,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(targetCountry != null
                    ? '+${targetCountry!.phoneCode}'
                    : ''),
              ),
              labelColor: AppColors.darkGray,
              cursorColor: AppColors.appBarColor,
              marginLeftRight: 20,
              marginTopBottom: 5,
              enableBorder: true,
              labelText: 'phone number',
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                _sendPhoneNumber();
              },
              leftRightMargin: 20,
              topBottomMargin: 10,
              text: 'Next',
              buttonColor: AppColors.appBarColor,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }

  void _pickCountry() {
    showCountryPicker(
      context: context,
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 500,
        borderRadius: BorderRadius.circular(10),
        inputDecoration: InputDecoration(
          labelText: 'Search country',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGray,
            ),
          ),
          labelStyle: TextStyle(color: AppColors.darkGray),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGray,
            ),
          ),
        ),
      ),
      onSelect: (Country country) {
        setState(() {
          targetCountry = country;
          countryController.text = country.name;
        });
      },
    );
  }

  void _sendPhoneNumber() {
    if (formKey.currentState!.validate()) {
      Navigator.popAndPushNamed(
        context,
        MobileChatListScreen.routeName,
        arguments: 'verificationId',
      );
    }

    // ref
    //     .read(authControllerProvider)
    //     .signInWithPhone(context, '+${targetCountry!.phoneCode}$phoneNumber');
  }
}
