import 'package:cashir/models/transaction.dart';

class UserModel {
  String? firstName;
  String? lastName;
  String? accountBalance;
  String? virtualAccountNo;
  List<TransactionModel> transactions = [];
  UserModel.fromjson({required Map<String, dynamic> data}) {
    firstName = data["first_name"];
    lastName = data["last_name"];
    accountBalance = data["account_balance"];
    virtualAccountNo = data["virtual_acct_no"];
    List<dynamic> transactionData = data["transactions"];
    transactions =
        transactionData.map((e) => TransactionModel.fromjson(data: e)).toList();
  }

  @override
  String toString() {
    Map<String, dynamic> data = {
      "firstName": firstName,
      "lastName": lastName,
      "accountBalance": accountBalance,
      "virtualAccountNo": virtualAccountNo,
      "transactions": transactions
    };
    return data.toString();
  }
}
