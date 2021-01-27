import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';
import 'package:flutter_complete_guide/screens/meal_detail._screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';

import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/', //default it '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetialScreen.routeName: (ctx) => MealDetialScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      //onGenerateRoute: (setting) { //if going to a PushNamed which is not registered in the routes (up here)
      //  print(setting.arguments);
      //  return MaterialPageRoute(
      //    builder: (ctx) => CategoriesScreen(), //if we try to reach any route which is not defined we go to the categories screen
      //  );},
      onUnknownRoute: (settings) {
        //last resort before error if nothing in routes
        return MaterialPageRoute(
            builder: (ctx) => CategoriesScreen()); //like 404 page not found
      },
    );
  }
}
