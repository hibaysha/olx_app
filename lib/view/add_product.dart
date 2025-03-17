import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  void _submitProduct() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String brand = _brandController.text;
      String category = _categoryController.text;
      double price = double.tryParse(_priceController.text) ?? 0.0;

      // Here, you can add logic to send data to a database or API
      print(
        "Product Added: $name, $brand, $category, \$${price.toStringAsFixed(2)}",
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Product Added Successfully!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Product Name"),
                validator:
                    (value) => value!.isEmpty ? "Enter product name" : null,
              ),
              TextFormField(
                controller: _brandController,
                decoration: InputDecoration(labelText: "Product Brand"),
                validator:
                    (value) => value!.isEmpty ? "Enter product brand" : null,
              ),
              TextFormField(
                controller: _categoryController,
                decoration: InputDecoration(labelText: "Category"),
                validator:
                    (value) => value!.isEmpty ? "Enter product category" : null,
              ),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: "Price"),
                keyboardType: TextInputType.number,
                validator:
                    (value) => value!.isEmpty ? "Enter product price" : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitProduct,
                child: Text("Add Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
