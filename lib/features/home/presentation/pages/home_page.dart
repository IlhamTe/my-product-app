import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/shared_widgets/app_text_form_field.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:my_product_app/features/home/presentation/widgets/category_widget.dart';
import 'package:my_product_app/features/home/presentation/widgets/custom_home_app_bar_widget.dart';
import 'package:my_product_app/features/home/presentation/widgets/home_drawer_widget.dart';
import 'package:my_product_app/features/home/presentation/widgets/product_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  final ValueNotifier<String?> _selectedCategoryNotifier = ValueNotifier(null);

  Timer? _debounce;

  @override
  void initState() {
    context.read<HomeBloc>().add(const FetchAllProductsEvent());

    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHomeAppBarWidget(
                      onTapAvatar: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Halo ${state.username.toUpperCase()}',
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Sedang ingin belanja apa hari ini?',
                              style: context.textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppTextFormField(
                              controller: _searchController,
                              label: '',
                              hintText: 'Apa yang sedang kamu cari ...',
                              maxLines: 1,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: AppColors.primaryColor,
                              ),
                              onChanged: (value) {
                                if (_debounce?.isActive ?? false) {
                                  _debounce?.cancel();
                                }

                                _debounce = Timer(
                                    const Duration(milliseconds: 500), () {
                                  context.read<HomeBloc>().add(
                                      SearchProductEvent(productName: value));
                                });
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            if (state.status != HomeStateStatus.loading)
                              ValueListenableBuilder(
                                  valueListenable: _selectedCategoryNotifier,
                                  builder: (_, selectedCategory, __) {
                                    return CategoryWidget(
                                      listCategory: state.categories,
                                      selectedCategory: selectedCategory,
                                      onSelectedCategory: (category) {
                                        _selectedCategoryNotifier.value =
                                            category;
                                        context.read<HomeBloc>().add(
                                            FilterProductsByCategoryEvent(
                                                category: category));
                                      },
                                    );
                                  }),
                            const SizedBox(
                              height: 16,
                            ),
                            state.status == HomeStateStatus.loading
                                ? const Padding(
                                    padding: EdgeInsets.only(top: 120),
                                    child: Center(
                                      child: SizedBox.square(
                                        dimension: 25,
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  )
                                : state.status == HomeStateStatus.success &&
                                        state.filteredProducts.isEmpty
                                    ? const Center(
                                        child: Text('Produk tidak ditemukan'))
                                    : GridView.builder(
                                        itemCount:
                                            state.filteredProducts.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          childAspectRatio: 2 / 3,
                                        ),
                                        padding:
                                            const EdgeInsets.only(bottom: 24),
                                        itemBuilder: (_, index) {
                                          final product =
                                              state.filteredProducts[index];
                                          return ProductCardWidget(
                                              product: product);
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
        drawer: const HomeDrawerWidget(),
      ),
    );
  }
}
