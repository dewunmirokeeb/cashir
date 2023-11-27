class ApiDataModel {
  String message;
  bool isSuccessful;
  final dynamic model;
  ApiDataModel({
    required this.message,
    required this.isSuccessful,
    this.model,
  });
  @override
  String toString() {
    Map<String, dynamic> data = {
      "isSuccessful": isSuccessful,
      "message": message,
      "model": model
    };
    return data.toString();
  }
}
