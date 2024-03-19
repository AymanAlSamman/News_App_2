import 'package:flutter/material.dart';
import 'package:news_app_2/core/network/api_manager.dart';
import 'package:news_app_2/core/widget/custom_background_widget.dart';
import 'package:news_app_2/models/category_model.dart';

class CategoryView extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryView({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    ApiManager.fetchDataSources(categoryModel.id);
    return CustomBackgroundWidget(

    );
  }
}
