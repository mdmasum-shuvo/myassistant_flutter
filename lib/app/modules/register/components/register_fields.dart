
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/register/controller/register_controller.dart';
import 'package:my_assistant/app/theme/theme.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/textfield.dart';
import '../../../utils/assets.dart';

Widget registerFields(RegisterController controller, BuildContext context){
  return Obx(() => Form(
    key: controller.fromKey,
    child: Column(
      children: [
        textField("First Name", controller.firstNameController, Assets.person,
            validator: (v) {
          if(v == null || v == "" ){
            return "Enter Name";
          }else{
            return null;
          }
        }, keyboardType: TextInputType.name),
        height25(),
        textField("Last Name", controller.lastNameController, Assets.person, validator: (v) {
          if(v == null || v == "" ){
            return "Enter Last Name";
          }else{
            return null;
          }
        }, keyboardType: TextInputType.name),
        height25(),
        textField("Email", controller.emailController, Assets.email, validator: (v) {
          if(v == null || v == "" ){
            return "Enter Email";
          }else{
            return null;
          }
        }, keyboardType: TextInputType.emailAddress),
        height25(),

        textField("Phone number", controller.phoneNumberController, Assets.call, validator: (v) {
          if(v == null || v == "" ){
            return "Enter Phn Number";
          }else{
            return null;
          }
        }, keyboardType: TextInputType.phone),
        // CountryCodePicker(
        // onChanged: print,
        // boxDecoration: BoxDecoration(
        //   color: white
        // ),
        // // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
        // initialSelection: 'BD',
        // favorite: ['+88','BD'],
        // // optional. Shows only country name and flag
        // showCountryOnly: false,
        // // optional. Shows only country name and flag when popup is closed.
        // showOnlyCountryWhenClosed: false,
        // // optional. aligns the flag and the Text left
        // alignLeft: true,
        // ),
        height25(),
        dateField("Date", controller.date.value.obs, ()async{
          var date = await showDatePicker(context: context,initialDate: controller.dateTime.value, firstDate: DateTime(DateTime.now().year - 100), lastDate: DateTime(DateTime.now().year +100),currentDate:DateTime.now() );
          if(date != null){
            controller.dateTime.value = date;
            controller.date.value = "${date.year}-${date.month}-${date.day}";
          }
        }),
        height25(),
        textField("Password", controller.passwordController, Assets.lock,
            keyboardType: TextInputType.visiblePassword,
            validator: (v) {
              if(v == null || v == "" ){
                return "Enter Password";
              }else if(v.length < 8){
                return "password must be more than 8 character!";
            }else{
                return null;
              }
            },
            obscureText: controller.showPassword.value,
            suffix: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  controller.showPassword.value =
                  !controller.showPassword.value;
                  debugPrint("obscure: ${controller.showPassword.value}");
                },
                child: SvgPicture.asset(controller.showPassword.value
                    ? Assets.visibilityOff
                    : Assets.visibilityOff),
              ),
            )),
        height25(),
        Row(
          children: [
            Checkbox(value: controller.isChecked.value, onChanged: (value) {
              controller.isChecked.value=value!;

            },),
            Gap(6.w),
            Expanded(
              child: RichText(text: TextSpan(
                  text: "By signing up, you’re agree to our ",
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor1
                  ),
                  children: [
                    TextSpan(
                      text: "Term of Service ",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: white
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.toNamed(Routes.REGISTER);

                          print("Terms tapped");
                        },
                    ),
                    TextSpan(
                      text: "and ",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor1
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: white
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.toNamed(Routes.REGISTER);

                          print("Privacy tapped");
                        },
                    )
                  ]
              )),
            )
          ],
        ),
        height25(64),
        primaryButton("Register", () {
          var v = controller.fromKey.currentState?.validate();
          debugPrint("dddddd ====> $v");
          if(v != null && v){
            controller.create();
          }
          // Get.offAllNamed(Routes.DASHBOARD);

        },textBlack,white),
      ],
    ),
  ));
}