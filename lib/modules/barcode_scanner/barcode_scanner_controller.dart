import 'package:camera/camera.dart';

class BarcodeScannerController {
  void getAvailableCameras() async {
    final response = await availableCameras();
    final camera = response.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.back);
  }
}
