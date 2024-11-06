import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:merchandise_management_system/models/Product.dart';
import 'package:merchandise_management_system/models/SubCategories.dart';
import 'package:merchandise_management_system/services/ProductService.dart';

import '../models/Supplier.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;
  Uint8List? _imageData;

  // Controllers for form fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _taxController = TextEditingController();
  final TextEditingController _paidController = TextEditingController();
  final TextEditingController _dueController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();
  final TextEditingController _sizesController = TextEditingController();

  DateTime _purchaseDate = DateTime.now();

  Future<void> _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final bytes = await pickedFile.readAsBytes();
        setState(() {
          _imageFile = pickedFile;
          _imageData = bytes;
        });
      }
    }catch (e) {
      print('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking image: ${e.toString()}')),
      );
    }
  }

  Future<void> _saveProduct() async {
    if (_formKey.currentState!.validate() && _imageFile != null) {
      final product = Product(
        id: 0,
        name: _nameController.text,
        description: _descriptionController.text,
        price: double.parse(_priceController.text),
        purchaseDate: _purchaseDate,
        quantity: int.parse(_quantityController.text),
        tax: double.parse(_taxController.text),
        paid: double.parse(_paidController.text),
        due: double.parse(_dueController.text),
        totalPrice: double.parse(_totalPriceController.text),
        image: '',
        sizes: _sizesController.text,
        supplier: Supplier(id: 0, name: 'Default Supplier',contactPerson: 'Default ContactPerson',email: 'Default Email',phone: 'Default Phone',address: 'Default Address',createdAt: DateFormat.d(),updatedAt: DateFormat.d(),status: '',organization: '', country: null,), // Replace as needed
        subCategories: SubCategories(id: 0, name: 'Default Category',productCategory: null), // Replace as needed
        productCode: '',
      );

      try {
        await ProductService().saveProduct(product, _imageFile);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Product added successfully!')),
        );

        // Clear form fields and reset image
        _nameController.clear();
        _descriptionController.clear();
        _priceController.clear();
        _quantityController.clear();
        _taxController.clear();
        _paidController.clear();
        _dueController.clear();
        _totalPriceController.clear();
        _sizesController.clear();
        _imageFile = null;
        _imageData = null;
        setState(() {});
      } catch (e) {
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error adding product: ${e.toString()}')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please complete the form and upload an image.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Product Name'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter product name' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter description' : null,
              ),
              TextFormField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Price'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter price' : null,
              ),
              TextFormField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Quantity'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter quantity' : null,
              ),
              TextFormField(
                controller: _taxController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Tax'),
                validator: (value) => value == null || value.isEmpty
                    ? 'Enter tax amount'
                    : null,
              ),
              TextFormField(
                controller: _paidController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Paid Amount'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter paid amount' : null,
              ),
              TextFormField(
                controller: _dueController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Due Amount'),
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter due amount' : null,
              ),
              TextFormField(
                controller: _totalPriceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Total Price'),
                validator: (value) => value == null || value.isEmpty
                    ? 'Enter total price'
                    : null,
              ),
              TextFormField(
                controller: _sizesController,
                decoration: InputDecoration(labelText: 'Sizes'),
                validator: (value) => value == null || value.isEmpty
                    ? 'Enter available sizes'
                    : null,
              ),
              SizedBox(height: 16),
              TextButton.icon(
                icon: Icon(Icons.image),
                label: Text('Upload Image'),
                onPressed: _pickImage,
              ),
              if (_imageData != null)
                Image.memory(_imageData!, height: 150, fit: BoxFit.cover),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _saveProduct,
                child: Text('Save Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}