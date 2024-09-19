import 'package:flutter/material.dart';
import 'package:hung/ui/utils/BackgroundAnimation.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key, required this.prompts});
  final Map<String, dynamic> prompts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return BackgroundAnimation(
              child: AlertDialog(
                scrollable: true,
                insetPadding: const EdgeInsets.symmetric(horizontal: 15),
                title: Text(prompts['query']),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(prompts['content']),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                prompts['query'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 5),
              Text(prompts['content'], maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
