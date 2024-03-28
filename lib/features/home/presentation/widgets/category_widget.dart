import 'package:flutter/material.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.listCategory,
    required this.selectedCategory,
    required this.onSelectedCategory,
  });
  final List<String> listCategory;
  final String? selectedCategory;
  final ValueChanged<String> onSelectedCategory;

  static final ItemScrollController itemScrollController =
      ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemCount: listCategory.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final bool isSelected = selectedCategory == listCategory[index];

            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                ),
                child: ChoiceChip(
                  label: Text(
                    listCategory[index].toUpperCase(),
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  selected: isSelected,
                  backgroundColor: Colors.white,
                  selectedColor: AppColors.primaryColor,
                  elevation: 3,
                  showCheckmark: false,
                  side: BorderSide.none,
                  onSelected: (_) {
                    onSelectedCategory(listCategory[index]);
                    itemScrollController.scrollTo(
                      index: index,
                      duration: const Duration(milliseconds: 700),
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
