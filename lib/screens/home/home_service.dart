import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';

import '../../models/category.dart';

class HomeService {
  var url = Uri.parse(baseUrl + 'category/show');
  var url2 = Uri.parse(baseUrl + 'product/show');
<<<<<<< HEAD
  String token = GetStorage().read('token');
  //'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY2MjczNjg4MywiZXhwIjoxNjYyNzQwNDgzLCJuYmYiOjE2NjI3MzY4ODMsImp0aSI6IkxUcG1ram5rTEVTWXE0SHQiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Q9-OeA3lBNwABj0xiv4h1SnMQhFxTm27iz2m6t7nAZc';

  getCategories() async {
=======
  String token =
'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY2MzA4ODg0NiwiZXhwIjoxNjYzMDkyNDQ2LCJuYmYiOjE2NjMwODg4NDYsImp0aSI6InRuWUljN3R0RVpwVTVWN3kiLCJzdWIiOjQsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.-FTI2dErkwaEDvTcXjvXb9Pt_vpp6GShVsrcZEfXT9E';
   getCategories() async {
    
>>>>>>> f92700bcb80239e254aa1cb481ce172f5c7a9ed4
    var response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    var res = jsonDecode(response.body);
    List category = res['data']
        .map(
          (item) => Category.fromJson(item),
        )
        .toList();

    return category;
  }

  getProducts() async {
    var response = await http.get(url2, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    print(response.body);

    var res = jsonDecode(response.body);
    List products = res['data']
        .map(
          (item) => Product.fromJson(item),
        )
        .toList();

    print(products);
    return products;
  }
}
