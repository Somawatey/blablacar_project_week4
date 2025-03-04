import 'package:blablacar_project_week4/dummy_data/dummy_data.dart';
import 'package:blablacar_project_week4/model/ride/locations.dart';
import 'package:blablacar_project_week4/repository/locations_repository.dart';

////
///   This service handles:
///   - The list of available rides
///
class LocationsService {

  static const List<Location> availableLocations = fakeLocations; 
  
  final LocationsRepository _repository;
  
  LocationsService(this._repository);
  
  List<Location> getLocations() {
    return _repository.getLocations();
  }
 
}