class CartModel {
    CartModel({
        this.id,
        this.userId,
        this.date,
        this.products,
        this.v,
    });

    int? id;
    int? userId;
    DateTime? date;
    List<Product>? products;
    int? v;

    factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        userId: json["userId"],
        date: DateTime.parse(json["date"]),
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "date": date!.toIso8601String(),
        "products": List<dynamic>.from(products!.map((x) => x.toJson())),
        "__v": v,
    };
}

class Product {
    Product({
        this.productId,
        this.quantity,
    });

    int? productId;
    int? quantity;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["productId"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "productId": productId,
        "quantity": quantity,
    };
}
