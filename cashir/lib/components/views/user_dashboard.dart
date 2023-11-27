import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/widgets/account_widget.dart';
import 'package:cashir/components/widgets/profile_widget.dart';
import 'package:cashir/components/widgets/transaction_widget.dart';
import 'package:cashir/models/user.dart';
import 'package:cashir/services/api_data_model.dart';
import 'package:cashir/services/api_service.dart';
import 'package:flutter/material.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({super.key});
  Future<ApiDataModel> fetchData() async {
    ApiDataModel apiData = await apiService.getData();
    return apiData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ApiDataModel>(
        future: fetchData(),
        builder: (context, data) {
          if (data.connectionState == ConnectionState.done) {
            if (data.hasError) {
              return const Center(
                child: Text('Error: Unable to get data'),
              );
            } else {
              ApiDataModel apiData = data.data!;
              if (!apiData.isSuccessful) {
                return Center(
                  child: Text(apiData.message),
                );
              } else {
                UserModel userData = apiData.model as UserModel;
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ProfileWidget(user: userData),
                      const SizedBox(height: 20),
                      PriceWidget(
                        balance: userData.accountBalance ?? "---",
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ...userData.transactions
                          .map((e) => TransactionWidget(transaction: e))
                          .toList(),
                      const SizedBox(height: 40),
                    ],
                  ),
                );
              }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
