import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/theme/Colors.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key, this.unFocusTextField = false, this.controller});
  final bool unFocusTextField;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: Card(
        elevation: 5,
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r)
        ),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          decoration: const InputDecoration(hintText: "0", border: InputBorder.none),
          style: GoogleFonts.poppins(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),
          validator: (value) {
            if(value == null || value.isEmpty){
              return "e";
            }else{
              return null;
            }
          },
          onChanged: (value) {
            if(value.length == 1){
              unFocusTextField ? FocusScope.of(context).unfocus() : FocusScope.of(context).nextFocus();
            }
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}
