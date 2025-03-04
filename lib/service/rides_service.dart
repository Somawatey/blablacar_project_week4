import 'package:blablacar_project_week4/model/ride_pref/ride_pref.dart';
import 'package:blablacar_project_week4/repository/ride_repository.dart';
import '../dummy_data/dummy_data.dart';
import '../model/ride/ride.dart';

////
///   This service handles:
///   - The list of available rides
///
class RidesService {

  //static List<Ride> availableRides = fakeRides;  

  static final RidesService _instance = RidesService._internal();
  late RidesRepository _repository;

  factory RidesService() {
    return _instance;
  }
  //private constructor
  RidesService._internal();

  // Initializer method to set the repository
  void initializeRepository(RidesRepository repository) {
    _repository = repository;
  }
  ///
  ///  Return the relevant rides, given the passenger preferences
  ///
  List<Ride> getRides(RidePreference preference, RidesFilter? filter) {

     return _repository.getRides(preference, filter);
  }
 
}

class RidesFilter {
  final bool acceptPets;
  
  RidesFilter({this.acceptPets = false});
}