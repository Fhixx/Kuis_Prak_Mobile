import 'package:flutter/material.dart';
import '../data/car.dart';

class DetailPage extends StatelessWidget {
  final Car car;

  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(car.name),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: Column(
          spacing: 12,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //IMAGE
            SizedBox(
              width: double.infinity,
              height: 180,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child: Image.network(
                  car.imageUrl,
                  fit: BoxFit.cover,

                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Colors.grey,
                      ),
                    );
                  },

                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    );
                  },
                ),
              ),
            ),

            Text(
              car.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D2D2D),
              ),),

            Text("${car.year}"),
            Text("Rp ${car.price}"),
            Text(car.description),
          ],
        ),
      ),
    );
  }
}