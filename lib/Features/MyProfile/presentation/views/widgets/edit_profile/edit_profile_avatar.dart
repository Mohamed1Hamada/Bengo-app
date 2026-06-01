import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EditProfileAvatar extends StatelessWidget {
  final String? profileImageUrl;
  final String? name;
  final VoidCallback? onPick;

  const EditProfileAvatar({
    super.key,
    this.profileImageUrl,
    this.name,
    this.onPick,
  });

  String get _initials {
    final parts = (name ?? '').trim().split(RegExp(r'\s+'));
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    return parts.first[0].toUpperCase();
  }

  bool get _isNetworkImage => profileImageUrl?.startsWith('http') ?? false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -68),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 114,
              height: 114,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: ClipOval(child: _buildImageWidget()),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: onPick,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                    gradient: AppStyles.kCustomGradient,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    AssetsData.cameraIcon,
                    width: 16,
                    height: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // منطق اختيار الصورة (Network vs Assets)
  Widget _buildImageWidget() {
    if (profileImageUrl == null || profileImageUrl!.isEmpty) return _fallback;

    if (_isNetworkImage) {
      return CachedNetworkImage(
        imageUrl: profileImageUrl!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => _fallback,
      );
    } else {
      return Image.asset(
        profileImageUrl!,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _fallback,
      );
    }
  }

  Widget get _fallback {
    return Container(
      decoration: BoxDecoration(gradient: AppStyles.kCustomGradient),
      child: Center(
        child: Text(
          _initials,
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
