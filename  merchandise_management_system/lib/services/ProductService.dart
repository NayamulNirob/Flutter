import 'dart:convert';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:merchandise_management_system/models/Product.dart';
import 'package:merchandise_management_system/services/AuthService.dart';
import 'package:image_picker/image_picker.dart';


class ProductService {

  final Dio _dio=Dio();

  final AuthService authService =AuthService();

  final String baseUrl='http://localhost:8089/api/product';


  Future<List<Product>> getAllProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/'));
    print(response.statusCode);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<Product> getProductById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Product not found');
    }
  }

  Future<Product> saveProduct(Product product, XFile? imageFile) async {
    final uri = Uri.parse('$baseUrl/save');
    var request = http.MultipartRequest('POST', uri);
    final formData = FormData();

    // Add product data
    request.fields['product'] = jsonEncode(product.toJson());
    formData.fields.add(MapEntry('product', jsonEncode(product.toJson())));

    // Add image if present
    if (imageFile != null) {
      var imageStream = http.ByteStream(imageFile.openRead());
      var imageLength = await imageFile.length();

      request.files.add(http.MultipartFile(
        'imageFile',
        imageStream,
        imageLength,
        filename: imageFile.path.split('/').last,
      ));
    }

    // Send request
    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 201) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to save product');
    }
  }

  Future<void> updateProduct(Product product, int id) async {
    final response = await http.put(
      Uri.parse('$baseUrl/update/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(product.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update product');
    }
  }

  Future<void> deleteProduct(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/delete/$id'));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete product');
    }
  }
}
