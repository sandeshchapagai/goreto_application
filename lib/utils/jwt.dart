// import 'dart:convert';
//
// class Jwt {
//   static getTokenPayload({required String? rawJwt}) async {
//     if (rawJwt != null) {
//       String normalizedSource = base64Url.normalize(rawJwt.split(".")[1]);
//       var payload = utf8.decode(base64Url.decode(normalizedSource));
//       var decodedPayload = jwtHivePayloadModelFromJson(payload);
//       setSubscriptionPlan(decodedPayload: decodedPayload);
//       hiveStorage.saveJwtPayload(value: decodedPayload);
//       hiveStorage.saveSubscriptionPlan(value: decodedPayload.plan);
//
//       if (decodedPayload.restaurantId != null) {
//         await secureStorage.saveActiveRestaurantId(
//             id: decodedPayload.restaurantId);
//         await secureStorage.saveSessionId(sessionId: decodedPayload.sessionId);
//       } else if (await secureStorage.getActiveRestaurantId != null) {
//         /// To Handle the case when user has no restaurant access
//         /// and needs to be redirected to restaurant selection screen/ No restaurant screen
//         // socketService.disconnectSockets();
//         await secureStorage.saveActiveRestaurantId(id: null);
//         await secureStorage.saveSessionId(sessionId: null);
//         var context = AppStates.globalKey.currentState!.context;
//         if (!context.mounted) return;
//         RouteNavigator.navigateOffAllNamed(
//             context, RouteConfig.restaurantSelectionRoute);
//       }
//     }
//   }
//
//   static setHeaderToken({required String? rawJwt}) async {
//     if (rawJwt != null) {
//       await secureStorage.saveToken(
//           token: Splits.bearerToken(fullToken: rawJwt).filteredToken);
//     }
//   }
//
//   static setSubscriptionPlan(
//           {required JwtHivePayloadModel decodedPayload}) async =>
//       await secureStorage.saveSubscriptionPlan(plan: decodedPayload.plan);
// }
