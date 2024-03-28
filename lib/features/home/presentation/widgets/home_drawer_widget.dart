import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/constants/image_constant.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/dialog_helper.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/home/presentation/bloc/home_bloc.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          Image.network(ImageConstant.dummyProfile).image,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    BlocSelector<HomeBloc, HomeState, String>(
                      selector: (state) {
                        return state.username;
                      },
                      builder: (context, username) {
                        return Text(
                          username.toUpperCase(),
                          style: context.textTheme.headlineMedium,
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  'Home',
                  style: context.textTheme.titleLarge,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  'Profil',
                  style: context.textTheme.titleLarge,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  'Pengaturan',
                  style: context.textTheme.titleLarge,
                ),
              ),
              const Spacer(),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  'Keluar',
                  style: context.textTheme.titleLarge?.copyWith(
                    color: Colors.red,
                  ),
                ),
                onTap: () {
                  DialogHelper.showConfirmDialog(
                    context,
                    contentSubtitle: 'Anda yakin ingin keluar?',
                    dialogIcon: Container(
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.error,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    positiveTitleButton: 'Ya, Keluar',
                    onTapPositiveButton: () {
                      // Close the dialog
                      navigate.pop();

                      // Close the drawer
                      navigate.pop();

                      context.read<HomeBloc>().add(const LogoutEvent());
                    },
                    showNegativeButton: true,
                    negativeTitleButton: 'Tidak, Kembali',
                    negativeTitleButtonStyle: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                    ),
                    negativeButtonColor: const Color(0xFFF1F6FF),
                    negativeBorderSideButton: const BorderSide(
                      color: Color(0xFFD7E0EE),
                      width: 1.0,
                    ),
                    onTapNegativeButton: () => navigate.pop(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
