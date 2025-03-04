import 'package:blablacar_project_week4/repository/mock/mock_locations_repository.dart';
import 'package:blablacar_project_week4/service/locations_service.dart';

void main(){
  final locationsRepository = MockLocationsRepository();
  final locationService = LocationsService(locationsRepository);
  print(locationService.getLocations());
}