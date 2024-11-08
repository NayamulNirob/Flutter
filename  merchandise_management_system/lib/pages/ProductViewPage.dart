
import 'package:flutter/material.dart';
import 'package:merchandise_management_system/models/Product.dart';
import 'package:merchandise_management_system/services/ProductService.dart';

class ProductViewPage extends StatefulWidget {
  final int productId;

  ProductViewPage({required this.productId});

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  late Future<Product> _productFuture;
  final ProductService _productService = ProductService();

  @override
  void initState() {
    super.initState();
    _productFuture = _productService.getProductById(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: FutureBuilder<Product>(
        future: _productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading product details'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('Product not found'));
          }

          final product = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                // Product Image
                product.image.isNotEmpty
                    ? Image.network(
                  "http://localhost:8089/images/${product.image}",
                  height: 200,
                  fit: BoxFit.cover,
                )
                    : Image.asset('assets/placeholder.png', height: 200),

                SizedBox(height: 16),

                // Product Name
                Text(
                  product.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),

                // Product Code
                Text(
                  'Code: ${product.productCode}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                SizedBox(height: 16),

                // Description
                Text(
                  'Description',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(product.description),

                SizedBox(height: 16),

                // Price
                Text(
                  'Price: \$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 16),

                // Purchase Date
                Text(
                  'Purchase Date: ${product.purchaseDate}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                SizedBox(height: 16),

                // Quantity and Sizes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Quantity: ${product.quantity}'),
                    Text('Sizes: ${product.sizes}'),
                  ],
                ),

                SizedBox(height: 16),

                // Financial Details (Tax, Paid, Due, Total Price)
                Text('Tax: \$${product.tax.toStringAsFixed(2)}'),
                Text('Paid: \$${product.paid.toStringAsFixed(2)}'),
                Text('Due: \$${product.due.toStringAsFixed(2)}'),
                Text(
                  'Total Price: \$${product.totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 16),

                // Supplier Info
                Text(
                  'Supplier: ${product.supplier.name}',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 8),

                // SubCategory Info
                Text(
                  'Category: ${product.subCategories.name}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
