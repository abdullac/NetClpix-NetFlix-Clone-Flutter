
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure{
  const factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.serverFailure() = _ServerFailure;
}




// class MainFailure {
//   factory MainFailure.clientFailure({
//     String? failure,
//   }) {
//     failureNotifier.value = failure!;
//     failureNotifier.notifyListeners();
//     return MainFailure.clientFailure();
//   }
//   factory MainFailure.serverFailure({
//     String? failure,
//   }) {
//     failureNotifier.value = failure!;
//     failureNotifier.notifyListeners();
//     return MainFailure.serverFailure();
//   }
// }
