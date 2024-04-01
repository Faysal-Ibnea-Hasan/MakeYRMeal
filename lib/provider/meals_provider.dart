import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:make_ur_meal/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
