import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class RecipesScreen extends StatelessWidget{
  final exploreService = MockFooderlichService();
  RecipesScreen({super.key}); 
  @override
  Widget build(BuildContext context) {
    // 2
      return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, AsyncSnapshot<List<SimpleRecipe>>snapshot) {
          // 4
          if(snapshot.connectionState == ConnectionState.done) {
            //TODO: Adicione aqui RecipeGridView
          //5
          return RecipesGridView(recipes: snapshot.data ?? []);
          } else {
          //6 
          return const Center (child: CircularProgressIndicator()); 
        }
    });
  }
}
