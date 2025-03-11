import 'package:flutter/material.dart';

class OlxProvider with ChangeNotifier {
  String _userId = '';
  String _userName = '';
  String _userEmail = '';

  List<Product> _products = [];

  String get userId => _userId;
  String get userName => _userName;
  String get userEmail => _userEmail;
  List<Product> get products => _products;

  void setUserId(String userId) {
    _userId = userId;
    notifyListeners();
  }

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

  void setUserEmail(String userEmail) {
    _userEmail = userEmail;
    notifyListeners();
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  void login(String text, String text2) {}
}

class Product {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
