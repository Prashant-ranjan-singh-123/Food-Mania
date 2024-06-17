import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/model/filters_model.dart';

class FiltersData {
  static List<FilterModel> listOfFilters = [
    FilterModel(name: "Spicy", icon: ImagePath.genreIcon),
    FilterModel(name: "Sweet", icon: ImagePath.starIcon),
    FilterModel(name: "Savory", icon: ImagePath.globeIcon),
    FilterModel(name: "Crispy", icon: ImagePath.movieReelIcon),
  ];
}
