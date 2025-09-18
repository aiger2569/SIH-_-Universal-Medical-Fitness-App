import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HeroSectionController extends GetxController {
  final healthData = <Map<String, String>>[
    {
      "label": "Heart Rate",
      "value": "72",
      "unit": "BPM",
      "range": "60-100 BPM",
      "status": "Normal",
    },
    {
      "label": "Blood Pressure",
      "value": "120/88",
      "unit": "mmHg",
      "range": "120/80 mmHg",
      "status": "Normal",
    },
    {
      "label": "Body Temp",
      "value": "98.6",
      "unit": "°F",
      "range": "97-99°F",
      "status": "Normal",
    },
    {
      "label": "Heart Rate",
      "value": "72",
      "unit": "BPM",
      "range": "60-100 BPM",
      "status": "Normal",
    },
    {
      "label": "Blood Pressure",
      "value": "120/88",
      "unit": "mmHg",
      "range": "120/80 mmHg",
      "status": "Normal",
    },
    {
      "label": "Body Temp",
      "value": "98.6",
      "unit": "°F",
      "range": "97-99°F",
      "status": "Normal",
    },
  ].obs;

  final doctorData = <Map<String, String>>[
    {
      "name": "Dr. Marcus Horliz",
      "specialty": "Chardiologist",
      "rating": "4.7",
      "distance": "800m away",
    },
    {
      "name": "Dr. Maria Elena",
      "specialty": "Psychologist",
      "rating": "4.9",
      "distance": "1.5km away",
    },
    {
      "name": "Dr. Stevi Jessi",
      "specialty": "Orthopedist",
      "rating": "4.8",
      "distance": "2km away",
    },
  ].obs;
}
