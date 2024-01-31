//
// @Author: "Eldor Turgunov"
// @Date: 31.01.2024
//

import 'package:get/get.dart';

class CategoryModel {
  final String categoryName;
  final RxBool isSelected;

  CategoryModel({
    required this.categoryName,
    required bool isSelected,
  }) : isSelected = isSelected.obs;
}

// final RxList<CategoryModel> categoryData = <CategoryModel>[
//   //random create model
//   CategoryModel(categoryName: 'All', isSelected: true),
//   CategoryModel(categoryName: 'Barber', isSelected: false),
//   CategoryModel(categoryName: 'Hair', isSelected: false),
//   CategoryModel(categoryName: 'Nail', isSelected: false),
//   CategoryModel(categoryName: 'Makeup', isSelected: false),
//   CategoryModel(categoryName: 'Massage', isSelected: false),
//   CategoryModel(categoryName: 'Face', isSelected: false),
//   CategoryModel(categoryName: 'Body', isSelected: false),
//   CategoryModel(categoryName: 'Spa', isSelected: false),
//   CategoryModel(categoryName: 'Waxing', isSelected: false),
//   CategoryModel(categoryName: 'Tattoo', isSelected: false),
//   CategoryModel(categoryName: 'Piercing', isSelected: false),
//   CategoryModel(categoryName: 'Eyebrows', isSelected: false),
//   CategoryModel(categoryName: 'Eyelashes', isSelected: false),
//   CategoryModel(categoryName: 'Teeth', isSelected: false),
//   CategoryModel(categoryName: 'Tanning', isSelected: false),
//   CategoryModel(categoryName: 'Others', isSelected: false),
// ].obs;
