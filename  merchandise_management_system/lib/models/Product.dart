import 'dart:convert';
import 'dart:math';
import 'package:intl/intl.dart'; // Import intl for DateFormat

import 'SubCategories.dart';
import 'Supplier.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  String productCode;
  DateTime purchaseDate;
  final int quantity;
  final double tax;
  final double paid;
  final double due;
  final double totalPrice;
  final String image;
  final String sizes;
  final Supplier supplier;
  final SubCategories subCategories;

  static const String _characters = 'hijklmnopqrstuvwxyz456789';
  static const int _codeLength = 5;
  static final Random _random = Random.secure();

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    DateTime? purchaseDate,
    required this.quantity,
    required this.tax,
    required this.paid,
    required this.due,
    required this.totalPrice,
    required this.image,
    required this.sizes,
    required this.supplier,
    required this.subCategories,
    required String productCode,
  })  : productCode = _generateProductCode(),
        purchaseDate = purchaseDate ??
            DateTime.now(); // Default to current date if not provided

  static String _generateProductCode() {
    return List.generate(
      _codeLength,
      (index) => _characters[_random.nextInt(_characters.length)],
    ).join();
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      purchaseDate: DateTime.parse(json['purchaseDate']),
      quantity: json['quantity'],
      tax: json['tax'].toDouble(),
      paid: json['paid'].toDouble(),
      due: json['due'].toDouble(),
      totalPrice: json['totalPrice'].toDouble(),
      image: json['image'],
      sizes: json['sizes'],
      productCode:json['productCode'],
      supplier: Supplier.fromJson(json['supplier']),
      subCategories: SubCategories.fromJson(json['subCategories']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'productCode': productCode,
      'purchaseDate': DateFormat('yyyy-MM-dd').format(purchaseDate),
      'quantity': quantity,
      'tax': tax,
      'paid': paid,
      'due': due,
      'totalPrice': totalPrice,
      'image': image,
      'sizes': sizes,
      'supplier': supplier.toJson(),
      'subCategories': subCategories.toJson(),
    };
  }
}
