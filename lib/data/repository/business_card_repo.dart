import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../datasource/remote/dio/dio_client.dart';
import '../datasource/remote/exception/api_error_handler.dart';


// class BusinessCardRepo {
//   final DioClient dioClient;
//   final SharedPreferences sharedPreferences;
//
//   BusinessCardRepo({required this.dioClient, required this.sharedPreferences});
//
// //get data
//   Future<ApiResponse> getBusinessCardData() async {
//     try {
//       Response response = await dioClient.get(
//         AppConstants.getBusinessCardsUri,
//         options: Options(headers: {
//           "Content-Type": "application/json",
//           "Authorization":
//           "Bearer ${ sharedPreferences.getString(AppConstants.TOKEN) ?? ""}",
//         }),
//       );
//       return ApiResponse.withSuccess(response);
//     } catch (e) {
//       return ApiResponse.withError(ApiErrorHandler.getMessage(e));
//     }
//   }
//
//   //update data
//   Future<ApiResponse> updateCardData(
//       dynamic businessName,
//       dynamic phone,
//       dynamic email,
//       dynamic address) async {
//     try {
//       Response response = await dioClient.post(
//         AppConstants.updateBusinessCardsUri,
//         queryParameters: {
//           "business_name": businessName,
//           "phone_number": phone,
//           "email": email,
//           "business_address": address
//         },
//         options: Options(headers: {
//           "Content-Type": "application/json",
//           "Authorization":
//           "Bearer ${ sharedPreferences.getString(AppConstants.TOKEN) ?? ""}",
//
//         }),
//       );
//       return ApiResponse.withSuccess(response);
//     } catch (e) {
//       return ApiResponse.withError(ApiErrorHandler.getMessage(e));
//     }
//   }
// }