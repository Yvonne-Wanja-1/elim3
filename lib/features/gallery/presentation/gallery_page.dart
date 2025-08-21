import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Gallery'),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 10, // TODO: Replace with actual image count
        itemBuilder: (context, index) {
          return _buildGalleryItem(context, index);
        },
      ),
    );
  }

  Widget _buildGalleryItem(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        // TODO: Show full-size image
      },
      child: Container(
        decoration: BoxDecoration(
          color: ElimTheme.backgroundGray,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // TODO: Replace with actual image
              Container(
                color: ElimTheme.primaryBlue.withOpacity(0.1),
                child: Icon(
                  Icons.image,
                  size: 48,
                  color: ElimTheme.primaryBlue.withOpacity(0.5),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                  child: Text(
                    'Image ${index + 1}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
