import 'package:flutter/material.dart';
import 'package:make_ur_meal/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 14,),
            for (final ingredient in meal.ingredients)
            Text(ingredient),
            const SizedBox(height: 24,),
            const Text(
              'Steps',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 14,),
            for (final step in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text(step,textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
