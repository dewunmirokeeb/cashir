class TransactionModel {
  String? id;
  String? desc;
  String? type;
  String? amount;
  String? date;
  TransactionModel.fromjson({required Map<String, dynamic> data}) {
    id = data["id"].toString();
    desc = data["desc"];
    type = data["type"];
    amount = data["amount"].toString();
    date = data["date"];
  }
  @override
  String toString() {
    Map<String, dynamic> data = {
      "id": id,
      "desc": desc,
      "type": type,
      "amount": amount,
      "date": date
    };
    return data.toString();
  }
}
