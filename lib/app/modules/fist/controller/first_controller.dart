import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;

  RxInt BuildCount = 0.obs;
  void kemit() => san.value = san.value - 1;
  void kosh() => san.value = san.value + 1;
}

// Rx<int> san = 0.obs;

// void otkoz() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//           builder: (context) => SecondView(
//                 sanKelet: san,
//               )),
//     );
//   }

// }
