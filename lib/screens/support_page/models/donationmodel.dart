class DonationModel {
  String id;
  String name;
  String currency;
  String amount;
  String msg;

  DonationModel(this.name, this.id, this.currency, this.amount, this.msg);

  DonationModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        currency = json['currency'],
        amount = json['amount'],
        msg = json['msg'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
        'currency': currency,
        'amount': amount,
        'msg': msg
      };
}
