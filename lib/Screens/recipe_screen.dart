import 'package:flutter/material.dart';
import 'package:c361_course_project_flutter_gui/Components/main_ingredient_dropdown.dart';

import '../Components/select_button.dart';

var loremipsum =
    '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Recipe Selector"),
        ),
        body: SafeArea(
          child: Row(
            children: [
              Column(
                children: [
                  const MainIngredientDropdown(),
                  SelectButton(
                    buttonTitle: 'Recipe Selector',
                    onPressed: () {},
                  ),
                ],
              ),
              Flexible(
                child: Text(
                  loremipsum,
                  maxLines: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
