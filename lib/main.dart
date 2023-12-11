import 'package:dine_n_deals/app/theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'app/theme/theme.dart';


String address = '';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);



}



class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.route}) : super(key: key);

  final String route;

  @override
  Widget build(BuildContext context) {

    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          //You can use the library anywhere in the app even in theme
          theme: theme(),
          home: child,
          initialRoute: route,
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}


// Future<void> getLocation() async {
//   bool serviceEnabled;
//   LocationPermission permission;
//
//   // Check if location services are enabled
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     // Handle the case where location services are not enabled
//     return;
//   }
//
//   // Request location permission
//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Handle the case where the user denies permission
//       return;
//     }
//   }
//
//   if (permission == LocationPermission.deniedForever) {
//     // Handle the case where the user has permanently denied permission
//     return;
//   }
// }

//
// Future<void> getCurrentLocation() async {
//   try {
//     Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.high,
//     );
//
//     // Use position.latitude and position.longitude to get the coordinates
//     // Now, call a function to get the location name using reverse geocoding
//     getPlaceName(position.latitude, position.longitude);
//   } catch (e) {
//     // Handle the case where the location couldn't be obtained
//     debugPrint(e.toString());
//   }
// }
//
//
// Future<void> getPlaceName(double latitude, double longitude) async {
//   try {
//     List<Placemark> placeMarks = await placemarkFromCoordinates(latitude, longitude);
//
//     if (placeMarks != null && placeMarks.isNotEmpty) {
//       Placemark placeMark = placeMarks.first;
//       String locationName = placeMark.subLocality ?? '';
//       address = locationName;
//       debugPrint('Current Location: $locationName');
//     } else {
//       debugPrint('No location name available');
//     }
//   } catch (e) {
//     // Handle the case where reverse geocoding fails
//     debugPrint(e.toString());
//   }
// }
