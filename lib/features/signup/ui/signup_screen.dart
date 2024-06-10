import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:clinic_management/core/common/widgets/app_text_button.dart';
import 'package:clinic_management/features/login/views/widgets/terms_and_conditions_text.dart';
import 'package:clinic_management/features/signup/logic/cubit/singup_cubit.dart';
import 'package:clinic_management/features/signup/ui/widgets/already_have_account_text.dart';
import 'package:clinic_management/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:clinic_management/features/signup/ui/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Create Account',
                  style: AppStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                const SignupForm(),
                verticalSpace(32),

                 AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}
