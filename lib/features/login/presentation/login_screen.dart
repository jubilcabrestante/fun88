import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88_clone/app/router/app_router.gr.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';
import 'package:fun88_clone/core/shared/buttons/app_button.dart';
import 'package:fun88_clone/core/shared/textfield/app_textfield.dart';
import 'package:fun88_clone/features/login/domain/cubit/login_cubit.dart';
import 'package:gap/gap.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textPrimary.withValues(alpha: 100),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final cubit = context.read<LoginCubit>();

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => context.router.replace(HomeRoute()),
                          icon: Icon(Icons.keyboard_arrow_left),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'REGISTER',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(25),
                    AppTextfield(label: 'USERNAME', hint: 'Eg: JohnDoe123'),
                    const SizedBox(height: 16),
                    AppTextfield(
                      label: 'PASSWORD',
                      hint: 'Enter your password',
                      obscureText: state.obscurePassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: cubit.togglePasswordVisibility,
                      ),
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Checkbox(
                          value: state.rememberMe,
                          onChanged: (_) => cubit.toggleRememberMe(),
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    Gap(12),
                    AppButton(
                      textButton: 'LOGIN',
                      onClick: () {
                        // handle login
                      },
                    ),
                    Gap(12),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('OR'),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    Gap(12),
                    AppButton(textButton: 'Sign in with Apple', onClick: () {}),
                    Gap(12),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
