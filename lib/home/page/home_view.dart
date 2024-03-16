import 'package:flutter/material.dart';
import 'package:news_app_2/core/widget/custom_background_widget.dart';
import 'package:news_app_2/home/page/category_view.dart';
import 'package:news_app_2/home/widget/custom_drawer.dart';
import 'package:news_app_2/home/widget/custom_item_widget.dart';
import 'package:news_app_2/main.dart';
import 'package:news_app_2/models/category_model.dart';

import '../../core/config/constants.dart';

class HomeView extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoriesList = [
    CategoryModel(
      id: "sport",
      title: "Sport",
      image: 'assets/images/sports.png',
      backgroundColor: const Color(0xffC91C22),
    ),
    CategoryModel(
      id: "politics",
      title: "Politics",
      image: 'assets/images/politics.png',
      backgroundColor: const Color(0xff003E90),
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      image: 'assets/images/health.png',
      backgroundColor: const Color(0xffED1E79),
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      image: 'assets/images/business.png',
      backgroundColor: const Color(0xffCF7E48),
    ),
    CategoryModel(
      id: "environment",
      title: "Environment",
      image: 'assets/images/environment.png',
      backgroundColor: const Color(0xff4882CF),
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      image: 'assets/images/science.png',
      backgroundColor: const Color(0xffF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          title: Text(
            selectedCategory == null ? "News App" : selectedCategory!.title,
            style: Constants.theme.textTheme.titleLarge,
          ),
        ),
        drawer: CustomDrawer(onCategoryDrawerTap: onDrawerCategoryClicked),
        body: selectedCategory == null
            ? Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Pick your category\nof interest',
                      style: Constants.theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 4 / 5,
                        ),
                        itemBuilder: (context, index) => CustomItemWidget(
                          index: index,
                          categoryModel: categoriesList[index],
                          onCategoryClicked: onCategoryClick,
                        ),
                        itemCount: 6,
                      ),
                    ),
                  ],
                ),
              )
            : CategoryView(categoryModel: selectedCategory!),
      ),
    );
  }

  CategoryModel? selectedCategory;

  void onCategoryClick(CategoryModel categoryModel) {
    selectedCategory = categoryModel;
    setState(() {
      print(categoryModel.id);
    });
  }

  void onDrawerCategoryClicked() {
    setState(() {
      selectedCategory = null;
      navigatorKey.currentState!.pop();
    });
  }
}
