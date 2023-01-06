class RspBanner {
  RspBanner({
      required this.image,});

  RspBanner.fromJson(dynamic json) {
    image = json['image'];
  }
 late String image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = image;
    return map;
  }

}