

import 'package:blablacar_project_week4/model/ride/ride.dart';
import 'package:blablacar_project_week4/service/rides_service.dart';
import 'package:blablacar_project_week4/model/ride_pref/ride_pref.dart';

abstract class RidesRepository {
  List<Ride> getRides(RidePreference preference, RidesFilter? filter);
}