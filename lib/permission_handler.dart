import 'package:permission_handler/permission_handler.dart';

class PermissionsHandler {
  static Future<bool> requestLocationPermission() async {
    var status = await Permission.location.request();
    return status.isGranted;
  }

  static Future<bool> checkLocationPermission() async {
    return await Permission.location.isGranted;
  }
}
