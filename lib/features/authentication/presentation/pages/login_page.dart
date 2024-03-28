import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/constants/image_constant.dart';
import 'package:my_product_app/core/dependency_injection/dependency_injection.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/app_toast_helper.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/shared_widgets/app_button.dart';
import 'package:my_product_app/core/shared_widgets/app_text_form_field.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:toastification/toastification.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthenticationBloc>(),
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryColor,
        ),
        child: Scaffold(
          body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              if (state.status == AuthenticationStateStatus.failedLogin) {
                AppToastHelper.showToast(
                  context,
                  title: state.message,
                  primaryColor: Colors.red,
                  toastType: ToastificationType.error,
                );
              } else if (state.status ==
                  AuthenticationStateStatus.successLogin) {
                navigate.pushToReplacement(RouteName.home);
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          ImageConstant.appLogo1,
                          width: 300,
                          height: 300,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Selamat datang!\nSilakan log in terlebih dahulu',
                          textAlign: TextAlign.center,
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      AppTextFormField(
                        controller: _usernameController,
                        label: 'Username',
                        hintText: 'johndoe123',
                        maxLines: 1,
                        isReadOnly:
                            state.status == AuthenticationStateStatus.loading,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: AppColors.primaryColor,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty == true) {
                            return 'Username tidak boleh kosong';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextFormField(
                        controller: _passwordController,
                        label: 'Password',
                        hintText: '*************',
                        maxLines: 1,
                        isPassword: true,
                        isReadOnly:
                            state.status == AuthenticationStateStatus.loading,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.primaryColor,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty == true) {
                            return 'Password tidak boleh kosong';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            // TODO: navigate to forgot password screen
                          },
                          child: Text(
                            'Lupa Password',
                            style: context.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      state.status == AuthenticationStateStatus.loading
                          ? const Center(
                              child: SizedBox.square(
                                dimension: 24,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : AppButton(
                              title: 'Log In',
                              onTap: () {
                                if (!FocusScope.of(context).hasPrimaryFocus) {
                                  //dismiss the keyboard
                                  FocusScope.of(context).unfocus();
                                }

                                if (_formKey.currentState?.validate() == true) {
                                  context.read<AuthenticationBloc>().add(
                                        LoginEvent(
                                          username:
                                              _usernameController.text.trim(),
                                          password: _passwordController.text,
                                        ),
                                      );
                                }
                              },
                            ),
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColors.grey60,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Belum punya akun? ',
                              ),
                              TextSpan(
                                text: 'Daftar Disini',
                                style: context.textTheme.titleSmall?.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // TODO: navigate to register/sign up page
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
