import 'package:blablacar_project_week4/model/ride/locations.dart';
import 'package:blablacar_project_week4/model/ride_pref/ride_pref.dart';
import 'package:blablacar_project_week4/repository/mock/mock_ride_repository.dart';
import 'package:blablacar_project_week4/service/rides_service.dart';

void main() {
  // Initialize repository and service
  final ridesRepository = MockRidesRepository();
  final ridesService = RidesService();
  ridesService.initializeRepository(ridesRepository);

  final testPreference = RidePreference(
    departure: Location(name: "Battambang", country: Country.cambodia),
    arrival: Location(name: "Siem Reap", country: Country.cambodia),
    departureDate: DateTime.now(),
    requestedSeats: 1,
  );

  // Test and display mock rides
  final rides = ridesService.getRides(testPreference, null);
  print('\nMock Rides Data:');
  for (var ride in rides) {
    print('Driver: ${ride.driver.firstName} ${ride.driver.lastName}');
    print('From: ${ride.departureLocation.name}');
    print('To: ${ride.arrivalLocation.name}');
    print('Departure: ${ride.departureDate}');
    print('Duration: ${ride.duration.inHours} hours');
    print('Available Seats: ${ride.availableSeats}');
    print('Pets Accepted: ${ride.petAccepted.acceptPets}');
    print('Price: \$${ride.pricePerSeat}');
    print('');
  }
  print('\nTotal rides found: ${rides.length}');
}
