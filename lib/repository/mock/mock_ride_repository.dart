import 'package:blablacar_project_week4/model/ride/locations.dart';
import 'package:blablacar_project_week4/model/ride/ride.dart';
import 'package:blablacar_project_week4/model/ride_pref/ride_pref.dart';
import 'package:blablacar_project_week4/repository/mock/mock_user.repository.dart';
import 'package:blablacar_project_week4/repository/ride_repository.dart';
import 'package:blablacar_project_week4/service/rides_service.dart';

class MockRidesRepository implements RidesRepository {
  @override
  List<Ride> getRides(RidePreference preference, RidesFilter? filter) {
    return [
      Ride(
        departureLocation: Location(name: "Battambang", country: Country.cambodia),
        arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
        departureDate: DateTime.now().add(Duration(hours: 5, minutes: 30)),
        arrivalDateTime: DateTime.now().add(Duration(hours: 7, minutes: 30)),
        duration: Duration(hours: 2),
        driver: kannika,
        petAccepted: RidesFilter(acceptPets: false),
        availableSeats: 2,
        pricePerSeat: 10,
      ),
      Ride(
        departureLocation: Location(name: "Battambang", country: Country.cambodia),
        arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
        departureDate: DateTime.now().add(Duration(hours: 20)),
        arrivalDateTime: DateTime.now().add(Duration(hours: 22)),
        duration: Duration(hours: 2),
        driver: chaylim,
        petAccepted: RidesFilter(acceptPets: false),
        availableSeats: 0,
        pricePerSeat: 10,
      ),
      Ride(
        departureLocation: Location(name: "Battambang", country: Country.cambodia),
        arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
        departureDate: DateTime.now().add(Duration(hours: 5)),
        arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
        duration: Duration(hours: 3),
        driver: mengtech,
        petAccepted: RidesFilter(acceptPets: false),
        availableSeats: 1,
        pricePerSeat: 10,
      ),
      Ride(
        departureLocation: Location(name: "Battambang", country: Country.cambodia),
        arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
        departureDate: DateTime.now().add(Duration(hours: 20)),
        arrivalDateTime: DateTime.now().add(Duration(hours: 22)),
        duration: Duration(hours: 2),
        driver: limhao,
        petAccepted: RidesFilter(acceptPets: true),
        availableSeats: 2,
        pricePerSeat: 10,
      ),
      Ride(
       departureLocation: Location(name: "Battambang", country: Country.cambodia),
        arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
        departureDate: DateTime.now().add(Duration(hours: 5)),
        arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
        duration: Duration(hours: 3),
        driver: sovanda,
        petAccepted: RidesFilter(acceptPets: false),
        availableSeats: 1,
        pricePerSeat: 10.0,
      ),
    ];
  }
}
 
