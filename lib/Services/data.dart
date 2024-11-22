import 'package:news_app_/models/category_model.dart';

List<CategoryModel>? getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.image = 'images/Bussiness.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.image = 'images/entertainment.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.image = 'images/general.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.image = 'images/sports.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.image = 'images/health.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.image = 'images/Science.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
