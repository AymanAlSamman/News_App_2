import 'package:flutter/material.dart';
import 'package:news_app_2/core/config/constants.dart';

class CustomDrawer extends StatelessWidget {
  Function onCategoryDrawerTap;
   CustomDrawer({super.key, required this.onCategoryDrawerTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Constants.mediaQuery.width * 0.7,
      child: Column(
        children: [
          Container(
            height: Constants.mediaQuery.height * 0.1,
            color: Constants.theme.primaryColor,
            child: Center(
              child: Text(
                "News App !",
                style: Constants.theme.textTheme.titleLarge,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    onCategoryDrawerTap();
                  },
                  child: Text(
                    "Categories",
                    style: Constants.theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Settings",
                  style: Constants.theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
