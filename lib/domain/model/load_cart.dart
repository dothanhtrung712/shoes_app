class LoadCartResult {
  final List<LoadCardItemResult> list;
  LoadCartResult({required this.list});
}

class LoadCardItemResult {
  final int? amount;
  final String? id;
  final String? image;
  final double? money;
  final String? name;

  LoadCardItemResult({this.amount, this.id, this.image, this.money, this.name});
}
