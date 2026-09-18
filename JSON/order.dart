class Order {
  final int orderId;
  final String orderedAt;
  final String status;
  final double totalPrice;
  final String memo;
  final String? coupon;

  const Order({
    required this.orderId,
    required this.orderedAt,
    required this.status,
    required this.totalPrice,
    required this.memo,
    this.coupon,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    orderId: json['orderId'] as int,
    orderedAt: json['orderedAt'] as String,
    status: json['status'] as String,
    totalPrice: (json['totalPrice'] as num).toDouble(),
    memo: json['memo'] as String,
    coupon: json['coupon'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'orderId': orderId,
    'orderedAt': orderedAt,
    'status': status,
    'totalPrice': totalPrice,
    'memo': memo,
    'coupon': coupon,
  };
}

class Customer {
  final int id;
  final String name;
  final String email;
  final String? phone;

  const Customer({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    if (phone != null) 'phone': phone,
  };
}

class OrderItem {
  final String sku;
  final String name;
  final double price;
  final int qty;

  const OrderItem({
    required this.sku,
    required this.name,
    required this.price,
    required this.qty,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
    sku: json['sku'] as String,
    name: json['name'] as String,
    price: (json['price'] as num).toDouble(),
    qty: json['qty'] as int,
  );

  Map<String, dynamic> toJson() => {
    'sku': sku,
    'name': name,
    'price': price,
    'qty': qty,
  };
}

class Shipping {
  final String method;
  final int fee;
  final Address address;

  const Shipping({
    required this.method,
    required this.fee,
    required this.address,
  });

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
    method: json['method'] as String,
    fee: json['fee'] as int,
    address: Address.fromJson(json['address'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'method': method,
    'fee': fee,
    'address': address.toJson(),
  };
}

class Address {
  final String zip;
  final String city;
  final String detail;

  const Address({required this.zip, required this.city, required this.detail});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    zip: json['zip'] as String,
    city: json['city'] as String,
    detail: json['detail'] as String,
  );

  Map<String, dynamic> toJson() => {'zip': zip, 'city': city, 'detail': detail};
}
