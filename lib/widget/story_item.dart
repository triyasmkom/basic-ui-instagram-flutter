import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
                  ),
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
