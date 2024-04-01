import 'package:flutter/material.dart';
import 'package:make_ur_meal/models/meal.dart';
import 'package:make_ur_meal/screens/meal_details.dart';
import 'package:make_ur_meal/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    
  });
  
  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
        
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(
        meal: meals[index],
        onSelectMeal: (meal) {
          selectMeal(context, meal);
        },
      ),
    );
    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Sorry! No meals here'),
            SizedBox(
              height: 16,
            ),
            Text(
              'Select another category!',
            ),
          ],
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
