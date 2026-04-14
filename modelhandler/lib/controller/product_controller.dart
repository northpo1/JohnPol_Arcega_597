// import 'package:modelhandler/model/product_model.dart';
// import 'package:supabase_flutter/supabase_flutter.dart' hide User;

// class ProductController {
//   final supabase = Supabase.instance.client;
//   // Get all product
//   Future<List<Product>> getProducts() async {
//     final data = await supabase.from('products').select();
//     return data.map((item) => Product.fromMap(item)).toList();
//   }

//   // Add Product
//   Future<void> addProduct(Product product) async {
//     await supabase.from('products').insert(product.toMap());
//   }

//   // Delete product
//   Future<void> deleteProduct(int id) async {
//     await supabase.from('products').delete().eq('id', id);
//   }

//   double calculateGrandTotalItems(List<Product> products) {
//     double grandTotal = 0;
//     for (var product in products) {
//       grandTotal += product.price * product.quantity;
//     }
//     return grandTotal;
//   }

//   int calculateTotalItems(List<Product> products) {
//     int totalItems = 0;
//     for (var item in products) {
//       totalItems += item.quantity;
//     }
//     return totalItems;
//   }
// }

import 'package:modelhandler/model/student_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StudentController {
  final supabase = Supabase.instance.client;

  Future<List<Student>> getStudents() async {
    final data = await supabase.from('students').select();
    return data.map((item) => Student.fromMap(item)).toList();
  }

  Future<void> addStudent(Student student) async {
    await supabase.from('students').insert(student.toMap());
  }

  Future<void> deleteStudent(int id) async {
    await supabase.from('students').delete().eq('id', id);
  }

  // TO DO: Filter students by name (case-insensitive search)
  // If query is empty, return all students
  // Hint: Use .where() and .contains()
  List<Student> searchStudents(List<Student> students, String query) {
    // YOUR CODE HERE
    if (query.isEmpty) return students;
    return students
        .where(
          (student) => student.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  // TO DO: Calculate the class average
  // Sum all student averages and divide by total students
  // Return 0 if list is empty
  double getClassAverage(List<Student> students) {
    if (students.isEmpty) return 0;
    double total = 0;
    for (var student in students) {
      total += student.average;
    }
    return total / students.length;
  }

  // Count students who passed
  int countPassed(List<Student> students) {
    int count = 0;
    for (var student in students) {
      if (student.status == 'Passed') count++;
    }
    return count;
  }

  // TO DO: Count students who failed
  // Similar to countPassed but check for 'Failed' status
  int countFailed(List<Student> students) {
    // YOUR CODE HERE
    int count = 0;
    for (var student in students) {
      if (student.status == 'Failed') count++;
    }
    return count;
  }
}
