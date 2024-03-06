import 'package:http/http.dart' as http;
import 'package:testfox2/post.dart';
import 'dart:async';
import 'dart:convert';


Future<Post> fetchPost() async {
  final uri = Uri.parse('https://dummyjson.com/products/1');
  final response = await http.get(uri);

  if (response.statusCode == 200){
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}